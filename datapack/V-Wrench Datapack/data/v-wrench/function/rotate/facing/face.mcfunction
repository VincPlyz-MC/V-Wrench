# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running face (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)

playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.2 2

# Nort, East, South, West
#$execute if block ~ ~ ~ #minecraft:rotation/face[face=floor] run return run setblock ~ ~ ~ $(block_id)[face=wall] replace
#$execute if block ~ ~ ~ #minecraft:rotation/face[face=wall] run return run setblock ~ ~ ~ $(block_id)[face=ceiling] replace
#$execute if block ~ ~ ~ #minecraft:rotation/face[face=ceiling] run return run setblock ~ ~ ~ $(block_id)[face=floor] replace

$execute if block ~ ~ ~ #minecraft:rotation/face[facing=west,face=wall] run return run setblock ~ ~ ~ $(block_id)[facing=east,face=ceiling] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=east,face=ceiling] run return run setblock ~ ~ ~ $(block_id)[facing=east,face=wall] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=east,face=wall] run return run setblock ~ ~ ~ $(block_id)[facing=east,face=floor] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=east,face=floor] run return run setblock ~ ~ ~ $(block_id)[facing=west,face=wall] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=west,face=floor] run return run setblock ~ ~ ~ $(block_id)[facing=west,face=wall] replace

$execute if block ~ ~ ~ #minecraft:rotation/face[facing=south,face=wall] run return run setblock ~ ~ ~ $(block_id)[facing=north,face=ceiling] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=north,face=ceiling] run return run setblock ~ ~ ~ $(block_id)[facing=north,face=wall] replace 
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=north,face=wall] run return run setblock ~ ~ ~ $(block_id)[facing=south,face=floor] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=south,face=floor] run return run setblock ~ ~ ~ $(block_id)[facing=south,face=wall] replace
$execute if block ~ ~ ~ #minecraft:rotation/face[facing=north,face=floor] run return run setblock ~ ~ ~ $(block_id)[facing=south,face=wall] replace

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"face (rotate) function failed!","color":"red"}
