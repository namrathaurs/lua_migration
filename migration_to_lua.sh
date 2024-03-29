# Filename: migration_to_lua.sh 
# Created by: Namratha Urs
# Date of Creation: June 11, 2019

# Description: 	This script serves as a wrapper to automate the process of translating Tcl modulefiles to Lua.
# Inputs: 	1. Directory location where the Tcl modulefiles are located (source directory)
#		2. Directory location where the translated Lua modulefiles should be saved (target directory)
# Outputs:	Lua modulefiles generated in the target directory location

#!/bin/bash

echo ""
echo "Enter the directory location of Tcl modulefiles that is to be translated:"
echo "Note: Use the absolute path to the directory (avoid environment variables)"
read src_dir

echo ""
echo "Enter the directory location to store the Lua modulefiles after translation"
echo "Note: Use the absolute path to the directory (avoid environment variables)"
read tgt_dir

echo ""

set -e

work_dir="/home/nvu0001/hpc_sandbox/lua_migration_testing"

#base="modulefiles"

if [ -z "`ls -A $src_dir`" ]
then
	echo "No modulefiles available for translation"
	exit $ERRCODE
fi

#cd $src_dir

#i find all files recursively starting from the current directory, while ignoring hidden files (.version, specifically)
find $src_dir -type f \( ! -iname ".*" \) -print -execdir $work_dir/translate.sh {} $tgt_dir $src_dir \;
