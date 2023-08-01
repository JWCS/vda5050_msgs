# Note: vda5050 has key names with dots '.' in them; since they're not representable in rosidl
# So... to make it work, cleanly - ish... broke it up into lots of subfiles...

MaxArrayLensOrder      order

MaxArrayLensNode      node

MaxArrayLensEdge      edge

MaxArrayLensActions      actions

uint32      instant_actions                 # Maximum number of instant actions per message processable by the AGV

MaxArrayLensTrajectory      trajectory

MaxArrayLensState      state

MaxArrayLensError      error

MaxArrayLensInfo      informations
