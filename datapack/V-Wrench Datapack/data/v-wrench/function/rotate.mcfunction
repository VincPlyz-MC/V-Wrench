# Debug Start
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Running rotate function...","color":"green"}

execute if block ~ ~ ~ #facing[facing=north] run return run function v-wrench:rotate/north
execute if block ~ ~ ~ #facing[facing=east] run return run function v-wrench:rotate/east
execute if block ~ ~ ~ #facing[facing=south] run return run function v-wrench:rotate/south
execute if block ~ ~ ~ #facing[facing=west] run return run function v-wrench:rotate/west

# Debug Fail
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p {"text":"Rotate function failed!","color":"red"}


#execute if block ~ ~ ~ #facing[facing=north] run return run item modify entity @p weapon.mainhand v-wrench:facing/east
#execute if block ~ ~ ~ #facing[facing=east] run return run item modify entity @p weapon.mainhand v-wrench:facing/south
#execute if block ~ ~ ~ #facing[facing=south] run return run item modify entity @p weapon.mainhand v-wrench:facing/west
#execute if block ~ ~ ~ #facing[facing=west] run return run item modify entity @p weapon.mainhand v-wrench:facing/north