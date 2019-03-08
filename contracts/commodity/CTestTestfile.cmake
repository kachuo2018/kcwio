# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/commodity
# Build directory: /home/kcw/build/contracts/commodity
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_commodity_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/commodity/commodity.abi")
