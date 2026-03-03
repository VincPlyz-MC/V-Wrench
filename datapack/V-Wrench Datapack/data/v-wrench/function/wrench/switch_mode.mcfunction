# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running switch_mode function...","color":"green"}

# Play Sound
function v-wrench:sounds/wrench_switch

# Reset trigger advancement
advancement revoke @p only v-wrench:wrench_switch

# Check Wrench Mode and run appropriate function
execute if items entity @p weapon.mainhand *[minecraft:custom_data~{"v-wrench:rotation":true,"v-wrench:chisel":false}] run return run function v-wrench:wrench/chisel_switch
execute if items entity @p weapon.mainhand *[minecraft:custom_data~{"v-wrench:chisel":true,"v-wrench:rotation":false}] run return run function v-wrench:wrench/rotate_switch


# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"switch_mode function failed!","color":"red"}
