# lif/LifNode.msg
# Compared to order/Node and state/NodeState:
# . None of: sequence_id, released, actions
# . Additionally: nodeName, vehicleTypeNodeProperties (actions)
# All properties sharing the same name as order/Node are meant to be identical.
# . Exception: NodePosition defer's its mapId, theta, and optional parameters.

string node_id              # Unique id of the node across all layouts contained in this LIF file.
                            # Note: different LIF files may contain duplicate nodeId's!

string node_name            # **Optional** Human-readable name of the node.

string node_description     # **Optional** Brief description of the node.

string map_id               # Unique identification of the map in which the position is
                            # referenced. each map has the same project specific global origin
                            # of coordinates. E.g., in the case of a lift, this node would
                            # occur on each layer (floor) the lift stops at, with the only
                            # difference being the .mapId and .nodeId.

NodePosition node_position  # Only the .x and .y members are used. See mapId in this message
                            # and the per-vehicle type .theta in VehicleTypeNodeProperty.

VehicleTypeNodeProperty[] vehicle_type_node_properties
                            # Vehicle type specific properties for this node.
                            # This attribute must not be empty. There must be an element for
                            # each vehicle type that would use this node. If the vehicle type
                            # is not present, the node must be invalid for that type.

