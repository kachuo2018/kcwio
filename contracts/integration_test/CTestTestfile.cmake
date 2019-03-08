# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/integration_test
# Build directory: /home/kcw/build/contracts/integration_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_integration_test_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/integration_test/integration_test.abi")
