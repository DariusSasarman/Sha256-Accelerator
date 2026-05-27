# 2026-05-26T22:15:23.600439643
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_hls_examples")

vitis.dispose()

