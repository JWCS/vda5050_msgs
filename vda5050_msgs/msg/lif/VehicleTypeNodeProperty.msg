# lif/VehicleTypeNodeProperty.msg
string vehicle_type_id    # Unique id of the vehicle type. Must be composed of the manufacturer and
                        # seriesName from the factsheet, like so:
                        # "[factsheet.manufacturer].[factsheet.seriesName]"

float64 theta           # **Optional** Range: [-Pi, Pi]. Absolute orientation with respect to
                        # global origin's rotation.

LifAction[] actions     # **Optional** The master-list of applicable actions to an order given
                        # this node.
