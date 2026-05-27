# 2026-05-27T13:17:52.195077762
import vitis

client = vitis.create_client()
client.set_workspace(path="project_bonus_firmware")

component = client.get_component(name="hello_world")

lscript = component.get_ld_script(path="/home/sasarmandarius/Desktop/LabCA/project_bonus_firmware/hello_world/src/lscript.ld")

lscript.update_memory_region("microblaze_mcs_0_dlmb_cntlr_memory_0", "0x00", "0x3fb0")

lscript.add_memory_region("new_memory_0", "0x0000", "0x8000")

lscript.rename_memory_region("new_memory_0", "asic_shared_memory")

lscript.update_memory_region("asic_shared_memory", "0x0", "0x8000")

lscript.update_memory_region("asic_shared_memory", "0x0", "0x3c")

lscript.rename_memory_region("asic_shared_memory", "asic_shared_memory_input")

lscript.add_memory_region("new_memory_0", "0x0000", "0x8000")

lscript.rename_memory_region("new_memory_0", "asic_shared_memory_output")

lscript.update_memory_region("asic_shared_memory_output", "0x40", "0x8000")

lscript.update_memory_region("asic_shared_memory_output", "0x40", "0x5C")

lscript.update_memory_region("microblaze_mcs_0_dlmb_cntlr_memory_0", "0x60", "0x3fb0")

lscript.update_memory_region("microblaze_mcs_0_dlmb_cntlr_memory_0", "0x60", "0x3FC0")

vitis.dispose()

