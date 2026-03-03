# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running rotate_init function...","color":"green"}


# Mode 1 (Not Sneaking)
execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/nesw with storage wrench:main
execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/rotation with storage wrench:main
execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/orientation/nesw with storage wrench:main

# Special Cases
execute if block ~ ~ ~ #all_signs if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/special_cases/signs with storage wrench:main
execute if block ~ ~ ~ #heads if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/special_cases/heads with storage wrench:main
execute if block ~ ~ ~ #banners if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/special_cases/banner with storage wrench:main


# Mode 2 (Sneaking)
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/up_down with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/top_bottom with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/face with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/in_wall with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/orientation/up_down_side with storage wrench:main


# Debug Fail
execute unless block ~ ~ ~ #minecraft:rotation_all if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run return run tellraw @p {"text":"rotate_init function failed!","color":"red"} 
