# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running up_down (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)

#$execute if block ~ ~ ~ #facing[facing=east] run setblock ~ ~ ~ $(block_id)[facing:west]

playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.2 2

# Up and Down
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=up] run return run setblock ~ ~ ~ $(block_id)[facing=down] replace
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=down] run return run setblock ~ ~ ~ $(block_id)[facing=up] replace

$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=north] run return run setblock ~ ~ ~ $(block_id)[facing=down] replace
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=east] run return run setblock ~ ~ ~ $(block_id)[facing=down] replace
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=south] run return run setblock ~ ~ ~ $(block_id)[facing=down] replace
$execute if block ~ ~ ~ #minecraft:rotation/up_down[facing=west] run return run setblock ~ ~ ~ $(block_id)[facing=down] replace

# Special Case: Hopper
$execute if block ~ ~ ~ minecraft:hopper[facing=south] run return run say $(block_id) is hopper facing south



tellraw @p {text:"Block Doesnt Support Rotation or is Missing from Block Tag","color":"red"}

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"up_down (rotate) function failed!","color":"red"}
