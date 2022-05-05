using Sandbox;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;

namespace srails
{
	/// <summary>
	/// Dynamic Track Generation path.
	/// </summary>
	[Library("track_path_generic")]
	[Hammer.Path("path_generic_node")]
	public partial class Track_path_generic : BasePathEntity<BasePathNode>
	{
	}

	/// <summary>
	/// A base entity that will appear in Hammer's Path Tool and automatically parse data from Hammer into a ready-to-use format in C#.
	/// </summary>
	/// <typeparam name="T">The class to deserialize node data into.</typeparam>
	[Hammer.Path]
	public partial class BasePathEntity<T> : Entity
		where T : BasePathNode
	{
		/// <summary>
		/// This is generated this automatically during map compile time
		/// </summary>
		[Property( "pathNodesJSON" ), Hammer.Skip]
		protected string pathNodesJSON { set; get; }

		/// <summary>
		/// A list of nodes this entity represents, as set up in Hammer.
		/// </summary>
		public List<T> PathNodes { protected set; get; } = new List<T>();

		// Populated from hammer automatically, used to link up path entity and its node entities (if they exist)
		[Property( "hammerUniqueID" ), Hammer.Skip]
		internal string HammerUniqueID { set; get; }

		/// <summary>
		/// Internal, do not use. Used to link nodes to path entities. Finds a specific path entity and returns it.
		/// </summary>
		public static Entity FindPathEntity( string uniqueID )
		{
			var list = All.OfType<BasePathEntity<BasePathNode>>();

			foreach ( var path in list )
			{
				if ( path.HammerUniqueID == uniqueID )
				{
					return path;
				}
			}

			return null;
		}

		private double VectorBearing(Vector3 Start, Vector3 End)
		{
			var radian = Math.Atan2(End.y - Start.y, End.x - Start.x);
			return (radian * (180/Math.PI) + 360) % 360;
		}

		public override void Spawn()
		{
			base.Spawn();

			PathNodes = JsonSerializer.Deserialize<List<T>>(pathNodesJSON, new JsonSerializerOptions{PropertyNameCaseInsensitive = true});
			
			for (var nodeid = 0; nodeid < PathNodes.Count; nodeid++)
			{
				BasePathNode node = PathNodes[ nodeid ];
				Vector3 nodePos = node.Entity.IsValid() ? node.Entity.Position : Transform.PointToWorld( node.Position );
				BasePathNode nodeNext = (nodeid + 1 < PathNodes.Count) ? PathNodes[ nodeid + 1 ] : null;
				if ( nodeNext == null ) continue;
				float segments = Math.Abs(GetCurveLength(node,nodeNext,15) / 20);

				for ( int i = 1; i <= segments; i++ )
				{
					var lerpPos = GetPointBetweenNodes( node, nodeNext, (float)i / segments );
					
					if (i == 1) {
						new ModelEntity
						{
							Position = nodePos,
							Rotation = Rotation.From(new Angles(0,Convert.ToSingle(VectorBearing(nodePos,lerpPos)),0)),
						}.SetModel("models/trakpak3/trakpak3_common/scrap/tie_single_plates.vmdl");
					}

					new ModelEntity
					{
						Position = lerpPos,
						Rotation = Rotation.From(new Angles(0,Convert.ToSingle(VectorBearing(nodePos,lerpPos)),0)),
					}.SetModel("models/trakpak3/trakpak3_common/scrap/tie_single_plates.vmdl");

					nodePos = lerpPos;
				}
			}
		}

		[Event.Tick.Server]
		protected void Tick()
		{
			// DYNAMIC TRACK DEBUGGER
			for (var nodeid = 0; nodeid < PathNodes.Count; nodeid++)
			{
				BasePathNode node = PathNodes[ nodeid ];
				Vector3 nodePos = node.Entity.IsValid() ? node.Entity.Position : Transform.PointToWorld( node.Position );
				BasePathNode nodeNext = (nodeid + 1 < PathNodes.Count) ? PathNodes[ nodeid + 1 ] : null;
				if ( nodeNext == null ) continue;
				float segments = Math.Abs(GetCurveLength(node,nodeNext,15) / 20);

				DebugOverlay.Sphere(nodePos + new Vector3(0,0,20), 4, Color.White);

				for ( int i = 1; i <= segments; i++ )
				{
					var lerpPos = GetPointBetweenNodes( node, nodeNext, (float)i / segments );
					
					if (i == 1) {
						DebugOverlay.Sphere(nodePos + new Vector3(0,0,20), 4, Color.Blue);
					}

					DebugOverlay.Sphere(lerpPos + new Vector3(0,0,20), 4, Color.Yellow);
					DebugOverlay.Line(nodePos + new Vector3(0,0,10), lerpPos + new Vector3(0,0,10), Color.Green);
					nodePos = lerpPos;
				}
			}
		}

		internal static Color TangentInColor = Color.Yellow;
		internal static Color TangentOutColor = Color.Orange;

		/// <summary>
		/// Visualizes the path for debugging purposes
		/// </summary>
		/// <param name="segments">"Level of Detail" for the path visualization.</param>
		/// <param name="drawTangents">Whether node tangents should be drawn or not.</param>
		public void DrawPath( int segments, bool drawTangents = false )
		{
			for ( var nodeid = 0; nodeid < PathNodes.Count; nodeid++ )
			{
				BasePathNode node = PathNodes[ nodeid ];

				Vector3 nodePos = node.Entity.IsValid() ? node.Entity.Position : Transform.PointToWorld( node.Position );
				DebugOverlay.Sphere( nodePos, 4, Color.White );

				if ( drawTangents )
				{
					Vector3 nodeTanIn;
					Vector3 nodeTanOut;
					if ( node.Entity.IsValid() && node.Entity is BasePathNodeEntity path )
					{
						nodeTanIn = path.Transform.PointToWorld( path.TangentIn );
						nodeTanOut = path.Transform.PointToWorld( path.TangentOut );
					}
					else
					{
						nodeTanIn = Transform.PointToWorld( node.Position + node.TangentIn );
						nodeTanOut = Transform.PointToWorld( node.Position + node.TangentOut );
					}

					DebugOverlay.Sphere( nodeTanIn, 2, TangentInColor );
					DebugOverlay.Line( nodePos, nodeTanIn, TangentInColor );
					DebugOverlay.Line( nodePos, nodeTanOut, TangentOutColor );
					DebugOverlay.Sphere( nodeTanOut, 6, TangentOutColor );
				}

				BasePathNode nodeNext = (nodeid + 1 < PathNodes.Count) ? PathNodes[ nodeid + 1 ] : null;
				if ( nodeNext == null ) continue;

				for ( int i = 1; i <= segments; i++ ) // Starting from i = 1 because i = 0 is start.Position
				{
					var lerpPos = GetPointBetweenNodes( node, nodeNext, (float)i / segments );

					DebugOverlay.Line( nodePos, lerpPos, Color.Green );

					nodePos = lerpPos;
				}
			}
		}

		// TODO: These beizer functions could probably be moved to Vector3 class or something
		// TODO: Add BasePathNodeEntity variants, make sure parenting nodes works correctly

		/// <summary>
		/// Returns a point on the cubic beizer curve between 2 given nodes
		/// </summary>
		/// <param name="start">The start node</param>
		/// <param name="end">The next node</param>
		/// <param name="t">Interpolation value from 0 to 1</param>
		/// <param name="reverse">Set this to true if moving backwards.</param>
		/// <returns>The position on the curve in world space</returns>
		public Vector3 GetPointBetweenNodes( BasePathNode start, BasePathNode end, float t, bool reverse = false )
		{
			Vector3 pos;
			Vector3 tanOut;
			if ( start.Entity.IsValid() && start.Entity is BasePathNodeEntity path )
			{
				pos = path.Position;
				tanOut = path.Transform.PointToWorld( reverse ? path.TangentIn : path.TangentOut );
			}
			else
			{
				pos = Transform.PointToWorld( start.Position );
				tanOut = Transform.PointToWorld( start.Position + ( reverse ? start.TangentIn : start.TangentOut ) );
			}

			Vector3 posNext;
			Vector3 tanInNext;
			if ( end.Entity.IsValid() && end.Entity is BasePathNodeEntity pathE )
			{
				posNext = pathE.Position;
				tanInNext = pathE.Transform.PointToWorld( reverse ? pathE.TangentOut : pathE.TangentIn );
			}
			else
			{
				posNext = Transform.PointToWorld( end.Position );
				tanInNext = Transform.PointToWorld( end.Position + ( reverse ? end.TangentOut : end.TangentIn ) );
			}

			Vector3 lerp1 = pos.LerpTo( tanOut, t );
			Vector3 lerp2 = tanOut.LerpTo( tanInNext, t );
			Vector3 lerp3 = tanInNext.LerpTo( posNext, t );
			Vector3 lerpAlmost1 = lerp1.LerpTo( lerp2, t );
			Vector3 lerpAlmost2 = lerp2.LerpTo( lerp3, t );

			return lerpAlmost1.LerpTo( lerpAlmost2, t );
		}

		/// <summary>
		/// Returns the approximate length of a curve between 2 nodes.
		/// </summary>
		/// <param name="start">Start node</param>
		/// <param name="end">End node</param>
		/// <param name="segments">Number of segments. The higher the value, the more precise (and slower) the result will be.</param>
		/// <param name="reverse">Set this to true if moving backwards.</param>
		/// <returns>The approximate length</returns>
		public float GetCurveLength( BasePathNode start, BasePathNode end, int segments, bool reverse = false )
		{
			Vector3 lastPos = start.Entity.IsValid() ? start.Entity.Position : Transform.PointToWorld( start.Position );

			float length = 0;
			for ( int i = 1; i <= segments; i++ ) // Starting from 1 because i = 0 is start.Position
			{
				var lerpPos = GetPointBetweenNodes( start, end, (float)i / segments, reverse );

				length += (lerpPos - lastPos).Length;

				lastPos = lerpPos;
			}
			return length;
		}
	}
}
