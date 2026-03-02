tellraw @p {"text":"V-Wrench:","color":"gold","extra":[{"text":" Datapack Loaded","color":"green"}]}


data modify block 0 0 0 Items set value []
data remove storage wrench:main block_id

scoreboard objectives add v-wrench_global_debug_flag dummy
execute unless score #v-wrench:debug_flag v-wrench_global_debug_flag matches 0..1 run scoreboard players set #v-wrench:debug_flag v-wrench_global_debug_flag 0

scoreboard objectives add v-wrench_reload_message dummy
execute unless score #v-wrench:reload_message v-wrench_reload_message matches 0..1 run scoreboard players set #v-wrench:reload_message v-wrench_reload_message 0

execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 0 run tellraw @p ["",{click_event:{action:"run_command",command:"scoreboard players set #v-wrench:debug_flag v-wrench_global_debug_flag 1"},text:"",extra:[{color:"gray",text:"[V-Wrench Debug: "},{color:"red",text:"Off"},{color:"gray",text:" ]"}]}]
execute if score #v-wrench:debug_flag v-wrench_global_debug_flag matches 1 run tellraw @p ["",{click_event:{action:"run_command",command:"scoreboard players set #v-wrench:debug_flag v-wrench_global_debug_flag 0"},text:"",extra:[{color:"gray",text:"[V-Wrench Debug: "},{color:"green",text:"On"},{color:"gray",text:" ]"}]}]