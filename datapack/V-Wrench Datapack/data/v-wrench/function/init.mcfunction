# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running init function...","color":"green"}

#execute if block ~ ~ ~ #facing run return run function v-wrench:rotate



execute unless block 0 0 0 minecraft:chest run return run setblock 0 0 0 minecraft:chest

data modify block 0 0 0 Items set value []
data remove storage wrench:main block_id

loot insert 0 0 0 mine ~ ~ ~ diamond_pickaxe[enchantments={silk_touch:1}]

execute store success storage wrench:main has_block int 1 run data modify storage wrench:main block_id set from block 0 0 0 Items[0].id

execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/nesw with storage wrench:main
execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/rotation with storage wrench:main
execute unless predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/orientation/nesw with storage wrench:main

execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/up_down with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/top_bottom with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/face with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/facing/in_wall with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:rotate/orientation/up_down_side with storage wrench:main

# Special Cases
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:special_cases/signs with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:special_cases/heads with storage wrench:main
execute if predicate v-wrench:is_sneaking if data storage wrench:main block_id run function v-wrench:special_cases/banner with storage wrench:main


# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"init function failed!","color":"red"}

# Debug Block Unsupported or Missing in Block Tag 
execute unless block ~ ~ ~ #minecraft:rotation_all run tellraw @p {text:"Block Doesnt Support Rotation or is Missing from Block Tag","color":"red"}