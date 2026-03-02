# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running up_down (rotate) function...","color":"green"}

# Debug Block ID
$execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run say $(block_id)

#$execute if block ~ ~ ~ #facing[facing=east] run setblock ~ ~ ~ $(block_id)[facing:west]

playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.2 2


# Top and Bottom v1
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=east,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=east,half=bottom] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=north,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=north,half=bottom] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=south,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=south,half=bottom] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=west,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=west,half=bottom] replace
# 
# 
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=east,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=east,half=top] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=north,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=north,half=top] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=south,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=south,half=top] replace
# $execute if block ~ ~ ~ #minecraft:rotation/half[facing=west,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=west,half=top] replace

# Top and Bottom v2
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=east,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=west,half=top] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=west,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=west,half=bottom] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=west,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=east,half=bottom] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=east,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=east,half=top] replace


$execute if block ~ ~ ~ #minecraft:rotation/half[facing=north,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=south,half=top] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=south,half=top] run return run setblock ~ ~ ~ $(block_id)[facing=south,half=bottom] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=south,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=north,half=bottom] replace
$execute if block ~ ~ ~ #minecraft:rotation/half[facing=north,half=bottom] run return run setblock ~ ~ ~ $(block_id)[facing=north,half=top] replace


#$execute if block ~ ~ ~ #minecraft:rotation/half[half=top] run say $(block_id) is top
#$execute if block ~ ~ ~ #minecraft:rotation/half[half=bottom] run say $(block_id) is bottom

tellraw @p {text:"Block Doesnt Support Rotation or is Missing from Block Tag","color":"red"}

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"up_down (rotate) function failed!","color":"red"}
