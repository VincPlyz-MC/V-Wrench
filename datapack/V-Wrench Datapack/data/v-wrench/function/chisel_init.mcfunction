# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running chisel_init function...","color":"green"}


# Chisel

# Mode 1 (Not Sneaking)
#execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:chisel/ with storage wrench:main

# Special Cases
#execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:chisel/special_cases/ with storage wrench:main

# Mode 2 (Sneaking)
#execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:chisel/ with storage wrench:main



# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"chisel_init function failed!","color":"red"}
