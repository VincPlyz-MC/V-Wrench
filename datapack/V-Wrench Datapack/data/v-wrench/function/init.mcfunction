# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running init function...","color":"green"}

# Debug Block Unsupported or Missing in Block Tag 
execute unless block ~ ~ ~ #minecraft:rotation_all run tellraw @p {text:"Block Doesnt Support Rotation or is Missing from Block Tag","color":"red"}

# Initialize Temp Data Storage
execute unless block 0 0 0 minecraft:chest run return run setblock 0 0 0 minecraft:chest

# Reset Temp Data Storage
data modify block 0 0 0 Items set value []
data remove storage wrench:main block_id

# Get Block Data and Store in Storage
loot insert 0 0 0 mine ~ ~ ~ diamond_pickaxe[enchantments={silk_touch:1}]
execute store success storage wrench:main has_block int 1 run data modify storage wrench:main block_id set from block 0 0 0 Items[0].id

#
#
#
# --------- Rotation ------------

execute if items entity @p weapon.mainhand *[minecraft:custom_data~{"v-wrench:rotation":true,"v-wrench:chisel":false}] run return run function v-wrench:rotate_init

# -------------------------------
#                                
#                                
#                                
# ---------- Chisel -------------

execute if items entity @p weapon.mainhand *[minecraft:custom_data~{"v-wrench:rotation":false,"v-wrench:chisel":true}] run return run function v-wrench:chisel_init

# -------------------------------
#
#
#