set_false_path -through [get_ports "Reset"]

# Waiver for LUT instantiation
create_waiver -internal -scoped -user microblaze -tags 12436 -type DRC -id PDCN-1569 -description "Valid LUT-6 instantiation" \
  -objects [get_cells -quiet -hierarchical -filter {HLUTNM=~LUT6_2} *LUT*]
