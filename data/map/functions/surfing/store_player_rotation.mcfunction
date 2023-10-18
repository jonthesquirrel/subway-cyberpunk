execute as @p[tag=playing] store result score player_rotation mapdata run data get entity @s Rotation[0]
execute as @e[tag=tracker] at @p positioned 0 ~ 0 facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=tracker] store result score shaft_rotation mapdata run data get entity @s Rotation[0]
function map:surfing/calculate_rotation_delta
