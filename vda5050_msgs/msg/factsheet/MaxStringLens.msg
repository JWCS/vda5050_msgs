uint32[<=1] msg_len          # Maximum MQTT Message length

uint32[<=1] topic_serial_len # Maximum length of serial-number part in MQTT-topics

uint32[<=1] topic_elem_len   # Maximum length of all other parts in MQTT-topics (timestamp, versions, manufacturer)

uint32[<=1] id_len           # Maximum length of ID-Strings

bool[<=1] id_numerical_only  # If true ID-strings need to contain numerical values only

uint32[<=1] enum_len         # Maximum length of ENUM- and Key-Strings

uint32[<=1] load_id_len      # Maximum length of loadId Strings
