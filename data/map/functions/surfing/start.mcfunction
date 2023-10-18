summon minecraft:armor_stand 0 -62 0 {Tags:["vehicle"]}
effect give @e[tag=vehicle] minecraft:levitation infinite 12 true

execute positioned 0 -62 0 run tag @p add playing
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]

ride @a[limit=1,tag=playing] mount @e[limit=1,tag=vehicle]

schedule function map:surfing/boost 10s
