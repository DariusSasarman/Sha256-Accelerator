# 2026-05-27T09:35:52.424443770
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

client.delete_component(name="firmware")

client.delete_component(name="componentName")

platform = client.create_platform_component(name = "firmware",hw_design = "$COMPONENT_LOCATION/../../project_bonus/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_mcs_0_microblaze_I",domain_name = "standalone_microblaze_mcs_0_microblaze_I",compiler = "gcc")

client.delete_component(name="bonus_project_firmware")

platform = client.get_component(name="firmware")
status = platform.build()

comp = client.create_app_component(name="firmware_code",platform = "$COMPONENT_LOCATION/../firmware/export/firmware/firmware.xpfm",domain = "standalone_microblaze_mcs_0_microblaze_I")

comp = client.get_component(name="firmware_code")
status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

