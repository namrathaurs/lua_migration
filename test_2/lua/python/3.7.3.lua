whatis([===[adds PYTHON 3.7.3 to your environment variables ]===])
conflict("python")
prepend_path{"PYTHONPATH","/cm/shared/utils/PYTHON/3.7.3/bin",delim=":",priority="0"}
prepend_path{"PATH","/cm/shared/utils/PYTHON/3.7.3/bin",delim=":",priority="0"}
prepend_path{"LD_LIBRARY_PATH","/cm/shared/utils/PYTHON/3.7.3/lib",delim=":",priority="0"}

local usr_msg_file = pathJoin(dirname(myFileName()),".user_message.lua")
--LmodMessage(usr_msg_file)
loadfile(usr_msg_file)()
