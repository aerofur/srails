import os
import sys
import subprocess
import time
from time import gmtime
from time import strftime

resourcecompiler = "C:/Program Files (x86)/Steam/steamapps/common/sbox/bin/win64/resourcecompiler.exe"
addondirectory = "C:/Program Files (x86)/Steam/steamapps/common/sbox/addons/srails"
directory = os.path.dirname(os.path.realpath(sys.argv[0]))
programstart = time.time()
completed = 0
failed = 0

# Welcome to my really meh model compiler for S&Box. It's just converting source 1 model files to source 2 models.
# It isnt pretty, it doesnt need to be, it just needs to work reliably (im converting like 600 models in one instance).

print("-----------------------------------------------------------------")
print("\033[0;30;47m  Welcome to the Trakpak3 Compiler! v1.0  ")
print("\033[0;37;40m-----------------------------------------------------------------")
print("Place this script in the destination folder for your models.")
print("Models must follow this format: [modelname].qc, [modelname]_physics.smd, [modelname]_anims/[sequence].smd")

inputdir = input("\nInput model path, or press enter to use script location: ")
if inputdir != "":
    directory = os.path.abspath(inputdir)
    print("\033[0;32;40m OK: Using inputted path, %s\033[0;37;40m"%directory)
else:
    print("\033[0;32;40m OK: Using script location.\033[0;37;40m")

modelpath = os.path.relpath(directory, start=addondirectory)

print("\nYou are about to compile these models to: \"%s\""%modelpath)
if input("\nAre you sure you want to proceed? This cannot be undone! [Y/N]") != "y":
    exit()

def block_animation(anim_name,anim_path,fadein,fadeout,framerate):
    return """
        {
            _class = "AnimFile"
            name = "%s"
            activity_name = ""
            activity_weight = 1
            weight_list_name = ""
            fade_in_time = %s
            fade_out_time = %s
            looping = false
            delta = false
            worldSpace = false
            hidden = false
            anim_markup_ordered = false
            disable_compression = false
            source_filename = "%s"
            start_frame = -1
            end_frame = -1
            framerate = %s
            reverse = false
        },
    """%(anim_name,fadein,fadeout,anim_path,framerate)

def block_rendermesh(meshname,meshpath):
    return """
        {
            _class = "RenderMeshFile"
            name = "%s"
            filename = "%s"
            import_translation = [ 0.0, 0.0, 0.0 ]
            import_rotation = [ 0.0, 0.0, 0.0 ]
            import_scale = 1.0
            align_origin_x_type = "None"
            align_origin_y_type = "None"
            align_origin_z_type = "None"
            parent_bone = ""
            import_filter = 
            {
                exclude_by_default = false
                exception_list = [  ]
            }
        },
    """%(meshname,meshpath)

def block_attachment(attachmentname,attachmentbone,attachmentorigin,attachmentrotation):
    return """
        {
            _class = "Attachment"
            name = "%s"
            parent_bone = "%s"
            relative_origin = [ %s, %s, %s ]
            relative_angles = [ %s, %s, %s ]
            weight = 1.0
            ignore_rotation = false
        },
    """%(attachmentname,attachmentbone,str(attachmentorigin[0]),str(attachmentorigin[1]),str(attachmentorigin[2]),str(attachmentrotation[0]),str(attachmentrotation[1]),str(attachmentrotation[2]))

for subdir,dirs,files in os.walk(directory, topdown = False): #rename folders without + or -
    for foldername in dirs:
        subdirectoryPath = os.path.relpath(subdir,directory)
        filePath = os.path.join(directory,subdirectoryPath,foldername)
        newFilePath = os.path.join(directory,subdirectoryPath,(foldername.replace("+","plus").replace("-","minus")))
        print("\033[0;33;40mRenaming folder: \"%s\" to comply with .vmdl naming scheme\033[0;37;40m"%foldername)
        os.rename(filePath,newFilePath)

for subdir,dirs,files in os.walk(directory, topdown = False): #do the same for smds.
    for filename in files:
        if filename.find(".smd") > 0:
            subdirectoryPath = os.path.relpath(subdir,directory)
            filePath = os.path.join(directory,subdirectoryPath,filename)
            newFilePath = os.path.join(directory,subdirectoryPath,(filename.replace("+","plus").replace("-","minus")))
            print("\033[0;33;40mRenaming file: \"%s\" to comply with .vmdl naming scheme\033[0;37;40m"%filename)
            os.rename(filePath,newFilePath)

for subdir,dirs,files in os.walk(directory, topdown = False): #now we actually doin the business, yay.
    for filename in files:
        if filename.find(".qc") > 0:
            qcfile = []
            bounding = []
            index = 0
            anim_index = 0
            attachment_index = 0
            mesh_index = 0
            animationlist = ""
            attachmentlist = ""
            meshlist = ""
            hasAnimation = False
            hasAttachment = False
            subdirectoryPath = os.path.relpath(subdir,directory)
            filePath = os.path.join(directory,subdirectoryPath,filename)
            vmdlName = filename.replace("+","plus").replace("-","minus").replace(".qc","")
            vmdlPath = os.path.join(directory,vmdlName) + ".vmdl"
            vmdl = modelpath.replace("\\","/") + "/" + subdirectoryPath.replace("\\","/") + "/" + vmdlName

            print("Reading QC file: \"%s\""%filePath)

            with open(filePath,"rt") as qc:
                for line in qc:
                    qcfile.append(line)

            for line in qcfile:
                if qcfile[anim_index].find("$sequence") != -1: #check for animations
                    sequence = []
                    sequence_begin = advance = anim_index
                    sequence_end = -1

                    while sequence_end == -1: #find text bracket for block
                        if qcfile[advance].find("}") != -1:
                            sequence_end = advance
                        else:
                            advance += 1

                    if qcfile[sequence_begin].split()[1].replace('"','') != "idle":
                        if sequence_end != -1:
                            sequence_block = qcfile[sequence_begin:sequence_end]
                            sequence_name = sequence_block[0].split()[1].replace('"','').replace("+","plus").replace("-","minus")
                            sequence_path = modelpath.replace("\\","/") + "/" + subdirectoryPath.replace("\\","/") + "/" + vmdlName + "_anims/" + sequence_name + ".smd"
                            sequence_fadein = sequence_block[2].split()[1]
                            sequence_fadeout = sequence_block[3].split()[1]
                            sequence_framerate = sequence_block[4].split()[1]
                            animationlist += block_animation(sequence_name,sequence_path,sequence_fadein,sequence_fadeout,sequence_framerate)
                            hasAnimation = True
                            print("\033[0;34;40mGot animation file: \"%s\"\033[0;37;40m"%(sequence_name + ".smd"))
                anim_index += 1

                if qcfile[attachment_index].find("$attachment") != -1: #finding rufus >.>
                    attachmentname = qcfile[mesh_index].split()[1].replace('"','').replace("+","plus").replace("-","minus")
                    attachmentbone = qcfile[mesh_index].split()[2].replace('"','').replace("+","plus").replace("-","minus")
                    attachmentorigin = [float(qcfile[mesh_index].split()[3].replace('"','')),float(qcfile[mesh_index].split()[4].replace('"','')),float(qcfile[mesh_index].split()[5].replace('"',''))]
                    attachmentrotation = [float(qcfile[mesh_index].split()[7].replace('"','')),float(qcfile[mesh_index].split()[8].replace('"','')),float(qcfile[mesh_index].split()[9].replace('"',''))]
                    attachmentlist += block_attachment(attachmentname,attachmentbone,attachmentorigin,attachmentrotation)
                    hasAttachment = True
                    print("\033[0;34;40mGot attachment: \"%s\"\033[0;37;40m"%attachmentname)
                attachment_index += 1

                if qcfile[mesh_index].find("studio") != -1: #gimme them meshes bb :flushed:
                    meshname = qcfile[mesh_index].split()[1].replace('"','').replace(".smd","").replace("+","plus").replace("-","minus")
                    meshpath = modelpath.replace("\\","/") + "/" + subdirectoryPath.replace("\\","/") + "/" + meshname + ".smd"
                    meshlist += block_rendermesh(meshname,meshpath)
                    print("\033[0;34;40mGot rendermesh file: \"%s\"\033[0;37;40m"%(meshname + ".smd"))
                mesh_index += 1

            for line in qcfile:
                if qcfile[index].find("$bbox") != -1: #check for bounding box
                    for t in qcfile[index].split():
                        try:
                            bounding.append(float(t))
                        except ValueError:
                            pass

                    print("\033[0;34;40mGot bounding box!\033[0;37;40m")
                    print("Building VMDL from QC file...")

                    with open(vmdlPath,"w") as f:
                        filedata = """<!-- kv3 encoding:text:version{e21c7f3c-8a33-41c5-9977-a76d3a32aa0d} format:modeldoc29:version{3cec427c-1b0e-4d48-a90a-0436f33a6041} -->
                        {
                            rootNode = 
                            {
                                _class = "RootNode"
                                children = 
                                [
                                    {
                                        _class = "ModelDataList"
                                        children = 
                                        [
                                            {
                                                _class = "Bounds Hull"
                                                mins = [ """+str(bounding[0])+""", """+str(bounding[1])+""", """+str(bounding[2])+""" ]
                                                maxs = [ """+str(bounding[3])+""", """+str(bounding[4])+""", """+str(bounding[5])+""" ]
                                            },
                                        ]
                                    },
                                    {
                                        _class = "MaterialGroupList"
                                        children = 
                                        [
                                            {
                                                _class = "DefaultMaterialGroup"
                                                remaps = 
                                                [
                                                    {
                                                        from = "ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                    },
                                                    {
                                                        from = "ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                    },
                                                    {
                                                        from = "invisible.vmat"
                                                        to = "materials/proppertextures/invisible.vmat"
                                                    },
                                                    {
                                                        from = "rail_side.vmat"
                                                        to = "materials/trakpak3_common/tracks/rails/rail_side.vmat"
                                                    },
                                                    {
                                                        from = "rail_top_rusty.vmat"
                                                        to = "materials/trakpak3_common/tracks/rails/rail_top_rusty.vmat"
                                                    },
                                                    {
                                                        from = "rail_top_shiny.vmat"
                                                        to = "materials/trakpak3_common/tracks/rails/rail_top_shiny.vmat"
                                                    },
                                                    {
                                                        from = "singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                    },
                                                    {
                                                        from = "singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                    },
                                                ]
                                                use_global_default = false
                                                global_default_material = ""
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin1"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin2"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin3"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin4"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray_dirty.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin5"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin6"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray_dirty.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin7"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_gray.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin8"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan_dirty.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin9"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin10"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan_dirty.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin11"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_tan.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin12"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone_dirty.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin13"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_wood_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin14"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone_dirty.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_dirty_noplates.vmat"
                                                    },
                                                ]
                                            },
                                            {
                                                _class = "MaterialGroup"
                                                name = "skin15"
                                                remaps = 
                                                [
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ballast/ballast_brown_dirty.vmat"
                                                        to = "materials/trakpak3_common/tracks/ballast/ballast_limestone.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_plates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_plates.vmat"
                                                    },
                                                    {
                                                        from = "materials/trakpak3_common/tracks/ties/singletie_wood_dirty_noplates.vmat"
                                                        to = "materials/trakpak3_common/tracks/ties/singletie_conc_clean_noplates.vmat"
                                                    },
                                                ]
                                            },
                                        ]
                                    },
                                    {
                                        _class = "PhysicsShapeList"
                                        children = 
                                        [
                                            {
                                                _class = "PhysicsMeshFile"
                                                name = "%s_physics"
                                                parent_bone = "static_prop"
                                                surface_prop = "ballast"
                                                collision_prop = "default"
                                                recenter_on_parent_bone = false
                                                offset_origin = [ 0.0, 0.0, 0.0 ]
                                                offset_angles = [ 0.0, 0.0, 0.0 ]
                                                align_origin_x_type = "None"
                                                align_origin_y_type = "None"
                                                align_origin_z_type = "None"
                                                filename = "%s_physics.smd"
                                                import_scale = 1.0
                                                maxMeshVertices = 0
                                                qemError = 0.0
                                                import_filter = 
                                                {
                                                    exclude_by_default = false
                                                    exception_list = [  ]
                                                }
                                            },
                                        ]
                                    },
                        """

                        if hasAttachment:
                            filedata += """
                                {
                                    _class = "AttachmentList"
                                    children = 
                                    [
                                        %s
                                    ]
                                },
                                {
                                    _class = "RenderMeshList"
                                    children = 
                                    [
                                        %s
                                    ]
                                },
                            """%(attachmentlist,meshlist)
                        else:
                            filedata += """
                                {
                                    _class = "RenderMeshList"
                                    children = 
                                    [
                                        %s
                                    ]
                                },
                            """%meshlist

                        if hasAnimation:
                            filedata += """
                                        {
                                            _class = "AnimationList"
                                            children = 
                                            [
                                                %s
                                            ]
                                            default_root_bone_name = ""
                                        },
                                    ]
                                    model_archetype = "animated_model"
                                    primary_associated_entity = "prop_dynamic"
                                    anim_graph_name = ""
                                }
                            }
                            """%animationlist
                        else:
                            filedata += """
                                    ]
                                    model_archetype = "default"
                                    primary_associated_entity = ""
                                    anim_graph_name = ""
                                }
                            }
                            """

                        print("\033[0;32;40mBuilding complete!\033[0;37;40m Writing data to \"%s\""%vmdlPath)
                        f.write(filedata%(vmdlName,vmdl))
                index += 1

for subdir,dirs,files in os.walk(directory, topdown = False): #compile AFTER we made the vmdls
    for filename in files:
        if filename.find(".vmdl_c") == -1 and filename.find(".vmdl") > 0:
            vmdlPath = os.path.join(directory,filename)

            print("\033[0;36;40mCompiling using resourcecompiler...\033[0;37;40m")
            cmd = [resourcecompiler,"-i","-f",vmdlPath]
            print(cmd)
            process = subprocess.Popen(cmd)
            process.wait()

            if process.returncode != 0:
                failed += 1
                print("\033[0;31;40mCaught Stack Error!\033[0;37;40m")
                if input("\nStack was pasued for debugging, do you want to continue stack? [Y/N]") != "y":
                    exit()

            if process.returncode == 0:
                print("\033[0;32;40mCompiled successfully!\033[0;37;40m")
                completed += 1

print("\033[0;33;40mCompiled all VMDLs!\033[0;37;40m")
print("Finishing up.")
mins_taken = strftime("%M", gmtime(time.time() - programstart))
seconds_taken = strftime("%S", gmtime(time.time() - programstart))
if process.returncode == 0:
    print("-----------------------------------------------------------------")
    print("\033[0;32;40m OK: %d compiled,\033[0;37;40m %d failed, %d skipped, %sm:%ss "%(completed,failed,index,mins_taken,seconds_taken))
    print("-----------------------------------------------------------------")
else:
    print("-----------------------------------------------------------------")
    print("\033[0;31;40m ERROR:\033[0;33;40m %d compiled,\033[0;31;40m %d failed,\033[0;33;40m %d skipped,\033[0;37;40m %sm:%ss "%(completed,failed,index,mins_taken,seconds_taken))
    print("-----------------------------------------------------------------")