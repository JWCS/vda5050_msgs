# Note: vda5050 has key names with dots '.' in them; since they're not representable in rosidl
# So... to make it work, cleanly - ish... broke it up into lots of subfiles...

MaxArrayLensOrder[<=1] order

MaxArrayLensNode[<=1] node

MaxArrayLensEdge[<=1] edge

MaxArrayLensActions[<=1] actions

uint32[<=1] instant_actions                 # Maximum number of instant actions per message processable by the AGV

MaxArrayLensTrajectory[<=1] trajectory

MaxArrayLensState[<=1] state

MaxArrayLensError[<=1] error

MaxArrayLensInfo[<=1] informations
