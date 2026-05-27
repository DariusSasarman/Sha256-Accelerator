# 2026-05-27T14:22:40.028909543
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

component = client.get_component(name="hello_world")

lscript = component.get_ld_script(path="/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/hello_world/src/lscript.ld")

lscript.update_memory_region("asic_shared_memory_input", "0x0", "0x40")

lscript.update_memory_region("asic_shared_memory_output", "0x40", "0x20")

platform = client.get_component(name="firmware")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../project_bonus/design_1_wrapper.xsa")

vitis.dispose()

