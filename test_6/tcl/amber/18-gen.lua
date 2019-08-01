local usr_grp_file = pathJoin(dirname(myFileName()),".user_groups.lua")
local usr_msg_file = pathJoin(dirname(myFileName()), ".user_message.lua")
local group = "pi_jl0752"
--LmodMessage(usr_msg_file)

func = loadfile(usr_grp_file)
func()
--LmodMessage(mode())
if mode() == "load" then
	result = check_user_groups(group)
end
--LmodMessage("lua code executed!")

--if result == true then
--LmodMessage("Wooooooooooooooooooooooooooo")
conflict("amber")
load("cuda/80/toolkit","bzip2/1.0.6","PackageEnv/intel17.0.4_gcc8.1.0_MKL_IMPI_AVX")
whatis([===[amber (18, x86_64, gnu, mpi, cuda) ]===])
setenv("AMBERHOME","/cm/shared/apps/scientific/AMBER/amber18")
setenv("AMBER_EXE","/cm/shared/apps/scientific/AMBER/amber18/bin/pmemd.cuda.MPI")
prepend_path{"PYTHONPATH","/cm/shared/apps/scientific/AMBER/amber18/lib/python2.7/site-packages",delim=":",priority="0"}
prepend_path{"PATH","/cm/shared/apps/scientific/AMBER/amber18/bin",delim=":",priority="0"}
prepend_path{"LD_LIBRARY_PATH","/cm/shared/apps/scientific/AMBER/amber18/lib",delim=":",priority="0"}
--end

loadfile(usr_msg_file)()
--LmodMessage(mode())
