# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running nesw (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)

playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.2 2

# Nort, East, South, West
$execute if block ~ ~ ~ #minecraft:rotation/facing[facing=north] run return run setblock ~ ~ ~ $(block_id)[facing=east] replace
$execute if block ~ ~ ~ #minecraft:rotation/facing[facing=east] run return run setblock ~ ~ ~ $(block_id)[facing=south] replace
$execute if block ~ ~ ~ #minecraft:rotation/facing[facing=south] run return run setblock ~ ~ ~ $(block_id)[facing=west] replace
$execute if block ~ ~ ~ #minecraft:rotation/facing[facing=west] run return run setblock ~ ~ ~ $(block_id)[facing=north] replace

$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=up] run return run setblock ~ ~ ~ $(block_id)[facing=north] replace
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=down] run return run setblock ~ ~ ~ $(block_id)[facing=north] replace



# Debug Facing
#$execute if block ~ ~ ~ #minecraft:facing[facing=east] run say $(block_id) is facing east
#$execute if block ~ ~ ~ #minecraft:facing[facing=west] run say $(block_id) is facing west
#$execute if block ~ ~ ~ #minecraft:facing[facing=north] run say $(block_id) is facing north
#$execute if block ~ ~ ~ #minecraft:facing[facing=south] run say $(block_id) is facing south

#$execute if block ~ ~ ~ #minecraft:facing[facing=up] run say $(block_id) is facing up
#$execute if block ~ ~ ~ #minecraft:facing[facing=down] run say $(block_id) is facing down


# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"nesw (rotate) function failed!","color":"red"}
