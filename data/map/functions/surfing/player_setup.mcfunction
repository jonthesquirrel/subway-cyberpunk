execute positioned 0 -63 0 run tag @p add playing
effect clear @a[tag=playing]
tp @a[tag=playing] 0 -63 0 0 -90
effect give @a[tag=playing] minecraft:levitation infinite 10 true
schedule function map:surfing/player_faster 5s
