# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/kcwio.sudo
# Build directory: /home/kcw/build/contracts/kcwio.sudo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_kcwio.sudo_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/kcwio.sudo/kcwio.sudo.abi")