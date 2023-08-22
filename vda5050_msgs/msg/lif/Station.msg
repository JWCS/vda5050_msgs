# lif/Station.msg

string station_id                 # Unique id of the station across all layouts contained in this LIF
                                  # file. Note: different LIF files may contain duplicate stationId's!

string[] interaction_node_ids     # List of NodeIds for this station.
                                  # These are nodes that represent the position at which interactions
                                  # with this station take place. Multiple nodes can be listed for
                                  # stations with multiple access points.
                                  # This attribute can NOT be empty.
                                  # Note: as for which node to use, by master control, may require
                                  # specifying limitations on the LoadSets on the leading edges
                                  # to each target interaction node.

string station_name               # **Optional** Human-readable name of the station.

string station_description        # **Optional** Brief description of the station.

float64 station_height 0.0        # **Optional** m

StationPosition station_position  # **Optional** Center point and orientation of station.
                                  # "Only for visualization", since the interaction points
                                  # are separately listed.

