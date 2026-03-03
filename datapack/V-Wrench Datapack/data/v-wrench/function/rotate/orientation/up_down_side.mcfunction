# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running orientation-nesw (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)


# Play Wrench Rotate Sound
function v-wrench:sounds/wrench_rotate

$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=south_up] run return run setblock ~ ~ ~ $(block_id)[orientation=down_south] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=down_south] run return run setblock ~ ~ ~ $(block_id)[orientation=north_up] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=north_up] run return run setblock ~ ~ ~ $(block_id)[orientation=up_north] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=up_north] run return run setblock ~ ~ ~ $(block_id)[orientation=south_up] replace

$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=west_up] run return run setblock ~ ~ ~ $(block_id)[orientation=up_east] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=up_east] run return run setblock ~ ~ ~ $(block_id)[orientation=east_up] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=east_up] run return run setblock ~ ~ ~ $(block_id)[orientation=down_east] replace
$execute if block ~ ~ ~ #minecraft:rotation/orientation[orientation=down_east] run return run setblock ~ ~ ~ $(block_id)[orientation=west_up] replace


# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"orientation-nesw (rotate) function failed!","color":"red"}
