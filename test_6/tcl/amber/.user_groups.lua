function check_user_groups (grp)
	local err_msg = "\n\nYou are not authorized to load this module.\nIf you feel you've received this message in error,\nplease contact HPC support at hpc-admin@unt.edu.\nAborting module load..\n\n"
	local flag = false
	
	grp_info = subprocess("groups")
	
	out = {}
	for s in string.gmatch(grp_info, "%S+") do
		table.insert(out, s)
	end
	--LmodMessage("Lua code executed! ----- 1")
	
	for i=1,#out do
		if out[i] ~= grp then
			--LmodMessage("No")
		do
		end
		elseif out[i] == grp then
			flag = true
			--LmodMessage("Yes")
		end
	end
	--LmodMessage("Lua code executed! ----- 2")
	
	if not flag then
		--LmodMessage("flag not set")
		LmodError(err_msg)
		do return end
		--break
	end
		--LmodMessage("Loading the module...")
		--LmodMessage("Lua code executed! ----- 3")
			
	--else	
end
