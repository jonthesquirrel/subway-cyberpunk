scoreboard objectives add mapdata dummy
scoreboard objectives setdisplay sidebar mapdata
scoreboard players set rotation_delta_scale_divisor mapdata 50

execute positioned 0 -62 0 run tag @p add playing
execute as @p[tag=playing] run tag @s add game_object
effect clear @p[tag=playing]
tp @p[tag=playing] 0 -62 5 0 -90
effect give @p[tag=playing] minecraft:levitation infinite 1 true

summon minecraft:marker 0 -62 0 {Tags:[shaft_target_rotation_marker,game_object]}
summon minecraft:marker 0 -62 0 {Tags:[player_target_rotation_marker,game_object]}

# debug
gamemode adventure @p[tag=playing]

# schedule function map:boost 8s
