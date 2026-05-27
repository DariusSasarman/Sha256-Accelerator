# 2026-05-27T10:00:05.474103567
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

platform = client.get_component(name="firmware")
status = platform.build()

comp = client.get_component(name="firmware_code")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="firmware_code")

client.delete_component(name="componentName")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../firmware/export/firmware/firmware.xpfm",domain = "standalone_microblaze_mcs_0_microblaze_I",template = "hello_world")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../firmware/export/firmware/firmware.xpfm",domain = "standalone_microblaze_mcs_0_microblaze_I",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["platform.c", "main.c"])

status = platform.build()

comp.build()

vitis.dispose()

