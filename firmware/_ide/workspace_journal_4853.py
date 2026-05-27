# 2026-05-27T15:45:33.904250088
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

platform = client.get_component(name="firmware")
status = platform.build()

status = platform.build()

