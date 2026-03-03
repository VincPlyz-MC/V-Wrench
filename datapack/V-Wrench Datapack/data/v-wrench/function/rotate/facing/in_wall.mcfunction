# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running in_wall (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)


# Play Wrench Rotate Sound
function v-wrench:sounds/wrench_rotate

$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=false,facing=north] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=east] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=false,facing=east] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=south] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=false,facing=south] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=west] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=false,facing=west] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=north] replace

$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=true,facing=north] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=east] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=true,facing=east] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=south] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=true,facing=south] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=west] replace
$execute if block ~ ~ ~ #minecraft:rotation/in_wall[in_wall=true,facing=west] run return run setblock ~ ~ ~ $(block_id)[in_wall=true,facing=north] replace


# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"in_wall (rotate) function failed!","color":"red"}
