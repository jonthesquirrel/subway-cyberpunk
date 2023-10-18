summon minecraft:block_display 1.0 100.0 10.0 {Tags:["train"],block_state:{Name:"minecraft:yellow_concrete"}}
execute as @e[tag=train] run data merge entity @s {teleport_duration:5}
