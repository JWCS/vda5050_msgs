string[<=1] load_id                                # Unique identification number of the load (e. g. barcode or
                                                   # RFID)

string[<=1] load_type                              # Type of load

string[<=1] load_position                          # Indicates which load handling/carrying unit of the AGV is
                                                   # used, e. g. in case the AGV has multiple spots/positions to
                                                   # carry loads. For example: “front”, “back”, “positionC1”, etc.

BoundingBoxReference[<=1] bounding_box_reference   # Point of reference for the location of the bounding box. The
                                                   # point of reference is always the center of the bounding box’s
                                                   # bottom surface (at height = 0) and is described in coordinates
                                                   # of the AGV’s coordinate system.

LoadDimensions[<=1] load_dimensions                # Dimensions of the load’s bounding box in meters.

float64[<=1] weight                                # Absolute weight of the load measured in kg.
