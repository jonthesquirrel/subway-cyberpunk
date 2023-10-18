execute positioned 0 -62 0 run tag @p add playing
effect clear @a[tag=playing]
effect give @a[tag=playing] minecraft:levitation infinite 12 true

# debug
gamemode adventure @a[tag=playing]

schedule function map:surfing/boost 10s
