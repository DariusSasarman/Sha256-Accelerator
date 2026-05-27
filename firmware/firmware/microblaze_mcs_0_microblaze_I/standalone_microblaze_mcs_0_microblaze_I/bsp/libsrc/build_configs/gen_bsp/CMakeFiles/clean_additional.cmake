# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/firmware/microblaze_mcs_0_microblaze_I/standalone_microblaze_mcs_0_microblaze_I/bsp/include/sleep.h"
  "/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/firmware/microblaze_mcs_0_microblaze_I/standalone_microblaze_mcs_0_microblaze_I/bsp/include/xiltimer.h"
  "/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/firmware/microblaze_mcs_0_microblaze_I/standalone_microblaze_mcs_0_microblaze_I/bsp/include/xtimer_config.h"
  "/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/firmware/microblaze_mcs_0_microblaze_I/standalone_microblaze_mcs_0_microblaze_I/bsp/lib/libxiltimer.a"
  )
endif()
