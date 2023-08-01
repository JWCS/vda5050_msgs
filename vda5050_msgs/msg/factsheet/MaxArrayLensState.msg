# Note: vda5050, for MaxArrayLens, has key names with '.'
# This is the... verbose workaround :(

uint32      node_states              # Maximum number of nodeStates sent by the AGV, maximum number of nodes in base of AGV

uint32      edge_states              # Maximum number of edgeStates sent by the AGV, maximum number of edges in base of AGV

uint32      loads                    # Maximum number of load-objects sent by the AGV

uint32      action_states            # Maximum number of actionStates sent by the AGV

uint32      errors                   # Maximum number of errors sent by the AGV in one state-message

uint32      informations             # Maximum number of information objects sent by the AGV in one state-message

