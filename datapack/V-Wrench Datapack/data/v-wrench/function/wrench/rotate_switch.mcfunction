# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running rotation_switch function...","color":"green"}


# Change Wrench Mode to Rotate and display in actionbar
item modify entity @p weapon.mainhand v-wrench:wrench-rotate
title @p actionbar {"text":"Rotate","color":"gold","bold":true,"extra":[{"text":" < ","color":"dark_gray","bold":false},{"text":"Chisel","color":"gray","bold":false}]}


# Debug
#say Rotation Switch Function Executed

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"rotation_switch function failed!","color":"red"}
