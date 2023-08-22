# lif/Layout.msg
string layout_id           # Unique id for layout.

string layout_name         # Human-readable name of the layout.

string layout_description  # **Optional** Brief description of layout.

LifNode[] nodes            # Collection of all nodes in the layout.

LifEdge[] edges            # Collection of all edges in the layout.

Station[] stations         # **Optional** Collection of all stations in the layout.

