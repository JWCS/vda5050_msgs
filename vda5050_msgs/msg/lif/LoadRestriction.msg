# lif/LoadRestriction.msg

bool unloaded             # "False": there is a load. "True": there is not a load.

bool loaded               # "True": there is a load. "False": there is not a load.

string[] load_set_names   # **Optional** List of load sets that may be transported on this edge.
                          # Corresponds to factsheet.loadSpecification.loadSets[].setName.
                          # If omitted or empty, implies all loadSets specified in factsheet
                          # are allowed.

