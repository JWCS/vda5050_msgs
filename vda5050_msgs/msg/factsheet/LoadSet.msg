string set_name

string load_type

string[] load_positions                           # List of load positions / load handling devices

BoundingBoxReference[<=1] bounding_box_reference  # Bounding box reference as defined in parameter loads[] in state-message

LoadDimensions[<=1] load_dimensions               # Load dimensions as defined in parameter loads[] in state-message

float64[<=1] max_weight                           # Maximum weight of load type [kg]

float64[<=1] min_loadhandling_height              # Minimum allowed height for handling of this load-type and weight [m]

float64[<=1] max_loadhandling_height              # Maximum allowed height for handling of this load-type and weight [m]

float64[<=1] min_loadhandling_depth               # Minimum allowed depth for this load-type and weight [m]

float64[<=1] max_loadhandling_depth               # Maximum allowed depth for this load-type and weight [m]

float64[<=1] min_loadhandling_tilt                # Minimum allowed tilt for this load-type and weight [rad]

float64[<=1] max_loadhandling_tilt                # Maximum allowed tilt for this load-type and weight [rad]

float64[<=1] agv_speed_limit                      # Maximum allowed speed for this load-type and weight [m/s^2]

float64[<=1] agv_acceleration_limit               # Maximum allowed acceleration for this load-type and weight [m/s^2]

float64[<=1] agv_deceleration_limit               # Maximum allowed deceleration for this load-type and weight [m/s^2]

float64[<=1] pick_time                            # Approx. time for picking up the load [s]

float64[<=1] drop_time                            # Approx. time for dropping the load [s]

string[<=1] description                           # Free description of the load handling set
