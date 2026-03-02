# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running init function...","color":"green"}

execute if block ~ ~ ~ #facing run return run function v-wrench:rotate

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"init function failed!","color":"red"}
