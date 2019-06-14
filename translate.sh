# Filename: translate.sh
# Created by: Namratha Urs
# Date of Creation: June 13, 2019

# Description: 	Translates a Tcl file to Lua
# Inputs:	Assumes input from the parent script that invokes this script
# Outputs:	Generates Lua code

#!/bin/bash

# location of tcl2lua.sh - /cm/shared/utils/LMOD/7.8/lmod/lmod/libexec
# LMOD_DIR environment variable contains the location of the tcl2lua.sh script that will be used for the translation effort
if [ -z $LMOD_DIR ] # check if the environment variable exists
then
	# if the environment variable is unset
	lmod_dir="/cm/shared/utils/LMOD/7.8/lmod/lmod/libexec"
else
	# if the environment variable is set
	lmod_dir=$LMOD_DIR
fi

to_lua_script="tcl2lua.tcl"

abs_path_to_file=$(readlink -f $1)
filename=$(basename $abs_path_to_file)
file_parentdir=$(dirname $abs_path_to_file)
file_parent_dirname=$(basename $file_parentdir)

if [ ! -d $2 ]
then
	mkdir -p $2
fi
target_dir=$2/$file_parent_dirname

if [ ! -d $target_dir ]
then
	mkdir -p $target_dir
fi
 
tclsh $lmod_dir/$to_lua_script $abs_path_to_file > $target_dir/$filename.lua
