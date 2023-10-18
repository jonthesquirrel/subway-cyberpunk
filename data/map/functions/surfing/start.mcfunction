execute positioned 0 -62 0 run tag @p add playing
execute as @p[tag=playing] run tag @s add game_object
effect clear @p[tag=playing]
tp @p[tag=playing] 0 -62 5 0 -90
effect give @p[tag=playing] minecraft:levitation infinite 12 true

summon minecraft:marker 0 -62 0 {Tags:[tracker,game_object]}

# debug
gamemode adventure @p[tag=playing]

schedule function map:surfing/boost 8s
