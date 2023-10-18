execute as @p[tag=playing] store result score player_rotation mapdata run data get entity @s Rotation[0]
execute as @e[tag=tracker] at @p positioned 0 ~ 0 facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=tracker] store result score shaft_rotation mapdata run data get entity @s Rotation[0]

scoreboard players operation rotation_delta mapdata = shaft_rotation mapdata
scoreboard players operation rotation_delta mapdata -= player_rotation mapdata

execute as @p[tag=playing] at @s positioned 0 ~ 0 facing entity @s feet positioned ^ ^ ^5 run tp @s ~ ~ ~
