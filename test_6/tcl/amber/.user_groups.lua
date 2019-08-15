function check_user_groups (grp)
	local err_msg = "\n\nYou are not authorized to load this module.\nIf you feel you've received this message in error,\nplease contact HPC support at hpc-admin@unt.edu.\nAborting module load..\n\n"
	local flag = false
	
	grp_info = subprocess("groups")
	
	out = {}
	for s in string.gmatch(grp_info, "%S+") do
		table.insert(out, s)
	end
	
	for i=1,#out do
		if out[i] ~= grp then
			-- if user group does not match the required group
		do
		end
		elseif out[i] == grp then
			--if user group matches the required group
			flag = true
		end
	end
	
	if not flag then
		-- if flag is not set
		LmodError(err_msg)
		--break
		do return end
	end
end
