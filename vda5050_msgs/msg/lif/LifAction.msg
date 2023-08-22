# lif/LifAction.msg
# Compared to common/Action:
# . None of: action_id
# . Additionally:
# All properties sharing the same name as common/Action are meant to be identical.

string action_type
string action_description
bool required false         # **Optional** Default: false. Defines whether this action must be
                            # Interpreted as strictly required to be performed on Node/Edge.
string blocking_type
ActionParameter[] action_parameters

# Enums for blockingType # Same as for common/Action.
string NONE = "NONE"
string SOFT = "SOFT"
string HARD = "HARD"

