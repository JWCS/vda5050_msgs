# lif/VehicleTypeEdgeProperty.msg
# All properties sharing the same name as order/Edge are meant to be identical.
# Compared to order/Edge, and the parent LifEdge, these are the member changes:
# . None of: direction, length
# . Additionally: rotationAtStartNodeAllowed, rotationAtEndNodeAllowed, loadRestriction
# . . reentryAllowed
# . Renamed: orientation -> vehicleOrientation

string vehicle_type_id            # Unique id of the vehicle type. Must be composed of the
                                  # manufacturer and seriesName from the factsheet, like so:
                                  # "[factsheet.manufacturer].[factsheet.seriesName]"

float64 vehicle_orientation       # **Optional** Radians. (corresponds to Edge/orientation)

string orientation_type "TANGENTIAL"  # **Optional** Enum {GLOBAL, TANGENTIAL}

bool rotation_allowed             # **Optional**

string rotation_at_start_node_allowed "BOTH"
string rotation_at_end_node_allowed "BOTH"
                                  # **Optional** Enum {NONE, CCW, CW, BOTH}
                                  # Allowed directiosn of rotation for vehicle at node, before
                                  # "arrival". (It may ought to be the same as any other edge
                                  # starting/ending at this node).

float64 max_speed                 # **Optional** m/s

float64 max_rotation_speed        # **Optional** rad/s

float64 min_height                # **Optional** m

float64 max_height                # **Optional** m

LoadRestriction load_restriction  # **Optional** Describes the load restrictions on this edge
                                  # for this vehicle type. If omitted, can be used by both
                                  # unloaded and loaded vehicle with this vehicleTypeId.

LifAction[] actions               # **Optional** The master-list of applicable actions to an order
                                  # given this edge.

Trajectory trajectory             # **Optional**

bool reentry_allowed true         # **Optional** "True": Vehicle of this type is allowed to enter
                                  # (from unautomated to) automated management by master control,
                                  # while on this edge.
                                  # "False": if vehicle starts or became unautomated on this edge,
                                  # it cannot become automated again on this edge.

# ENums for orientationType
string GLOBAL     = "GLOBAL"
string TANGENTIAL = "TANGENTIAL"

# Enums for rotationAt*NodeAllowed
string NONE = "NONE"
string CCW  = "CCW"
string CW   = "CW"
string BOTH = "BOTH"

