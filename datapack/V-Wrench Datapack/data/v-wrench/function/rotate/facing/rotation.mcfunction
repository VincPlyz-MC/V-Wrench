# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running rotation (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)


# Play Wrench Rotate Sound
function v-wrench:sounds/wrench_rotate

# Nort, East, South, West
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=0] run return run setblock ~ ~ ~ $(block_id)[rotation=1] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=1] run return run setblock ~ ~ ~ $(block_id)[rotation=2] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=2] run return run setblock ~ ~ ~ $(block_id)[rotation=3] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=3] run return run setblock ~ ~ ~ $(block_id)[rotation=4] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=4] run return run setblock ~ ~ ~ $(block_id)[rotation=5] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=5] run return run setblock ~ ~ ~ $(block_id)[rotation=6] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=6] run return run setblock ~ ~ ~ $(block_id)[rotation=7] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=7] run return run setblock ~ ~ ~ $(block_id)[rotation=8] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=8] run return run setblock ~ ~ ~ $(block_id)[rotation=9] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=9] run return run setblock ~ ~ ~ $(block_id)[rotation=10] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=10] run return run setblock ~ ~ ~ $(block_id)[rotation=11] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=11] run return run setblock ~ ~ ~ $(block_id)[rotation=12] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=12] run return run setblock ~ ~ ~ $(block_id)[rotation=13] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=13] run return run setblock ~ ~ ~ $(block_id)[rotation=14] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=14] run return run setblock ~ ~ ~ $(block_id)[rotation=15] replace
$execute if block ~ ~ ~ #minecraft:rotation/rotation[rotation=15] run return run setblock ~ ~ ~ $(block_id)[rotation=0] replace


#function v-wrench:special_cases/banner
#function v-wrench:special_cases/heads
#function v-wrench:special_cases/signs

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"rotation (rotate) function failed!","color":"red"}

