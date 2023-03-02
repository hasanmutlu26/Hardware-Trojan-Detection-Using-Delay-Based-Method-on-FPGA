set_global_assignment -entity "pll250" -library "lib_pll250" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll250" -library "lib_pll250" -name IP_TOOL_VERSION "13.1"
set_global_assignment -entity "pll250" -library "lib_pll250" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll250" -name SPD_FILE [file join $::quartus(sip_path) "pll250.spd"]

set_global_assignment -library "lib_pll250" -name MISC_FILE [file join $::quartus(sip_path) "pll250_sim/pll250.vo"]
