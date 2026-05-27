# 2026-05-26T23:18:26.253897539
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

platform = client.create_platform_component(name = "bonus_project_firmware",hw_design = "$COMPONENT_LOCATION/../../project_bonus/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_mcs_0_microblaze_I",domain_name = "standalone_microblaze_mcs_0_microblaze_I",compiler = "gcc")

platform = client.get_component(name="bonus_project_firmware")
status = platform.update_desc(desc="firmware for the sha256 encryption accelerator
")

status = platform.build()

comp = client.create_app_component(name="firmware",platform = "$COMPONENT_LOCATION/../bonus_project_firmware/export/bonus_project_firmware/bonus_project_firmware.xpfm",domain = "standalone_microblaze_mcs_0_microblaze_I")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../project_bonus/design_1_wrapper.xsa")

status = platform.build()

vitis.dispose()

