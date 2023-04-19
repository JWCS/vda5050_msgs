vda5050_msgs
============

Note: this is forked from ipa320's vda5050_msgs, building off the ros2-vda5050-v2 branch.
Unfortunately, there seems to be some minor either misspellings, QOL in the typing, or odd naming, that I completely split from it. (But thanks!)

This branch tracks the ros2 version of the vda5050, starting at V2, and will support v3 when it is resolved.

The vda5050_serializer is also not guarenteed to work, yet, but some relevant utilities may migrate here.

If the messages do not accurately reflect the (v2.0) schema, please raise an issue; in this re-write it has been meticulously checked.

### Message Structure
The top-level message types are on the top level; their member types are either under the correspondingly named directory or common/.
```
vda5050_msgs/msg/
| Order.msg
| order/{ Edge.msg, Node.msg }
| State.msg
| state/{ ActionState.msg, BatteryState.msg, EdgeState.msg, Error.msg, Load.msg, NodeState.msg, ... }
| InstantActions.msg
| common/{ Action.msg, Trajectory.msg, NodePosition.msg, AgvPosition.msg, Header.msg, ... }

| Connection.msg
| Visualization.Msg

| Factsheet.msg
| factsheet/{ TypeSpecification.msg, PhysicalParameters.msg, AgvGeometry.msg, ProtocolFeatures.msg, ... }
```

## Limitations
Currently, not defining some fields of the message types is not supported. This may break some features.
Optional support is implemented in the message types, as types of `[<=1]`, to clearly differentiate between not-existing or null.

## Description

The vda5050_msgs package contains the datatypes (json objects) specified by the VDA
"Arbeitskreis Schlüsseltechnologien" in their recommondation "VDA 5050 - Schnittstelle zur Kommunikation zwischen
Fahrerlosen Transportfahrzeugen (FTF) und einer Leitsteuerung" in version 1.1.
This package provides the message files which can be used to be (de-)serialized with an implementation of mqtt
(e.g mqtt_bridge) or to plain json (rospy_message_converter) or similar.

