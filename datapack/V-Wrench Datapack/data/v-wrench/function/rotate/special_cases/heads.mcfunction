# Play Wrench Rotate Sound
function v-wrench:sounds/wrench_rotate


execute if block ~ ~ ~ minecraft:player_wall_head[facing=north] run return run setblock ~ ~ ~ minecraft:player_wall_head[facing=east] replace
execute if block ~ ~ ~ minecraft:player_wall_head[facing=east] run return run setblock ~ ~ ~ minecraft:player_wall_head[facing=south] replace
execute if block ~ ~ ~ minecraft:player_wall_head[facing=south] run return run setblock ~ ~ ~ minecraft:player_wall_head[facing=west] replace
execute if block ~ ~ ~ minecraft:player_wall_head[facing=west] run return run setblock ~ ~ ~ minecraft:player_wall_head[facing=north] replace

execute if block ~ ~ ~ minecraft:zombie_wall_head[facing=north] run return run setblock ~ ~ ~ minecraft:zombie_wall_head[facing=east] replace
execute if block ~ ~ ~ minecraft:zombie_wall_head[facing=east] run return run setblock ~ ~ ~ minecraft:zombie_wall_head[facing=south] replace
execute if block ~ ~ ~ minecraft:zombie_wall_head[facing=south] run return run setblock ~ ~ ~ minecraft:zombie_wall_head[facing=west] replace
execute if block ~ ~ ~ minecraft:zombie_wall_head[facing=west] run return run setblock ~ ~ ~ minecraft:zombie_wall_head[facing=north] replace

execute if block ~ ~ ~ minecraft:creeper_wall_head[facing=north] run return run setblock ~ ~ ~ minecraft:creeper_wall_head[facing=east] replace
execute if block ~ ~ ~ minecraft:creeper_wall_head[facing=east] run return run setblock ~ ~ ~ minecraft:creeper_wall_head[facing=south] replace
execute if block ~ ~ ~ minecraft:creeper_wall_head[facing=south] run return run setblock ~ ~ ~ minecraft:creeper_wall_head[facing=west] replace
execute if block ~ ~ ~ minecraft:creeper_wall_head[facing=west] run return run setblock ~ ~ ~ minecraft:creeper_wall_head[facing=north] replace

execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=north] run return run setblock ~ ~ ~ minecraft:piglin_wall_head[facing=east] replace
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=east] run return run setblock ~ ~ ~ minecraft:piglin_wall_head[facing=south] replace
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=south] run return run setblock ~ ~ ~ minecraft:piglin_wall_head[facing=west] replace
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=west] run return run setblock ~ ~ ~ minecraft:piglin_wall_head[facing=north] replace

execute if block ~ ~ ~ minecraft:dragon_wall_head[facing=north] run return run setblock ~ ~ ~ minecraft:dragon_wall_head[facing=east] replace
execute if block ~ ~ ~ minecraft:dragon_wall_head[facing=east] run return run setblock ~ ~ ~ minecraft:dragon_wall_head[facing=south] replace
execute if block ~ ~ ~ minecraft:dragon_wall_head[facing=south] run return run setblock ~ ~ ~ minecraft:dragon_wall_head[facing=west] replace
execute if block ~ ~ ~ minecraft:dragon_wall_head[facing=west] run return run setblock ~ ~ ~ minecraft:dragon_wall_head[facing=north] replace

execute if block ~ ~ ~ minecraft:skeleton_wall_skull[facing=north] run return run setblock ~ ~ ~ minecraft:skeleton_wall_skull[facing=east] replace
execute if block ~ ~ ~ minecraft:skeleton_wall_skull[facing=east] run return run setblock ~ ~ ~ minecraft:skeleton_wall_skull[facing=south] replace
execute if block ~ ~ ~ minecraft:skeleton_wall_skull[facing=south] run return run setblock ~ ~ ~ minecraft:skeleton_wall_skull[facing=west] replace
execute if block ~ ~ ~ minecraft:skeleton_wall_skull[facing=west] run return run setblock ~ ~ ~ minecraft:skeleton_wall_skull[facing=north] replace

execute if block ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=north] run return run setblock ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=east] replace
execute if block ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=east] run return run setblock ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=south] replace
execute if block ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=south] run return run setblock ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=west] replace
execute if block ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=west] run return run setblock ~ ~ ~ minecraft:wither_skeleton_wall_skull[facing=north] replace