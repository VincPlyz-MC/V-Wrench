# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running chisel_switch function...","color":"green"}


# Change Wrench Mode to Chisel and display in actionbar
item modify entity @s weapon.mainhand v-wrench:wrench-chisel
title @p actionbar {"text":"Rotate","color":"gray","bold":false,"extra":[{"text":" > ","color":"dark_gray","bold":false},{"text":"Chisel","color":"gold","bold":true}]}


# Debug 
#say Chisel Switch Function Executed

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"chisel_switch function failed!","color":"red"}
