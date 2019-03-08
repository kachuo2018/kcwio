# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/simple.token
# Build directory: /home/kcw/build/contracts/simple.token
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_simple.token_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/simple.token/simple.token.abi")
