# lif/LifEdge.msg
# Compared to order/Edge and state/EdgeState:
# . None of: sequence_id, released
# . Additionally: edge_name
# . Note: many properties were moved to VehicleTypeEdgeProperty. See detailed differences there.
# All properties sharing the same name as order/Edge are meant to be identical.

# The LIF only contains edges that can be used by 1+ vehicle types.
# Therefore there are no blocked or unusable edges.

string edge_id            # Unique id of the node across all layouts contained in this LIF file.
                          # Note: different LIF files may contain duplicate nodeId's!

string edge_name          # **Optional** Human-readable name of the edge.

string edge_description   # **Optional** Brief description of the edge.

string start_node_id      # Id of starting node

string end_node_id        # Id of ending node

VehicleTypeEdgeProperty[] vehicle_type_edge_properties
                            # Vehicle type specific properties for this edge.
                            # This attribute must not be empty. There must be an element for
                            # each vehicle type that would use this edge. If the vehicle type
                            # is not present, the edge must be invalid for that type.

