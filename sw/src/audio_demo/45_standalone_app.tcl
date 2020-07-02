# This script will create an application named after the script directory
# based on the C "Empty Application" template and for a specific processor
# It imports all source files from the src subdirectory as LINKS.
# BUG 2020.1: linker script imported as link won't build, import by copying
# as a workaround. If lscript.ld is modified, copy it back to src/ for
# versioning.
# It also sets some C/C++ build settings
# Workspace should be set externally

set script [info script] 
set script_dir [file normalize [file dirname $script]]

puts "INFO: Running $script"

set app_name [file tail $script_dir]

# Modify these for custom domain/BSP app
set proc "ps7_cortexa9_0"

app create -name $app_name -lang "c" -template "Empty Application"

importsources -name $app_name -path $script_dir/src -soft-link
# Workaround for lscript import bug
importsources -name $app_name -path $script_dir/src/lscript.ld

# Set project settings per build configuration
# Add _DEBUG macro for verbose prints
app config -name $app_name -set build-config Debug

# Set project settings common for both build configurations
foreach bc {Debug Release} {
	app config -name $app_name -set build-config $bc
	# Set any other common setting here
	# Make sure include dir is set to src root as common base
	# for relative header includes
	app config -name $app_name -add include-path $script_dir/src
}