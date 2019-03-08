# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/noop
# Build directory: /home/kcw/build/contracts/noop
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_noop_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/noop/noop.abi")
