# CMake generated Testfile for 
# Source directory: /home/kcw/contracts/dice
# Build directory: /home/kcw/build/contracts/dice
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_dice_abi "/home/kcw/build/scripts/abi_is_json.py" "/home/kcw/contracts/dice/dice.abi")
