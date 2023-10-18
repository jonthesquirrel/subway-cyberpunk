execute as @p[tag=playing] store result score player_rotation mapdata run data get entity @s Rotation[0]

execute as @e[tag=shaft_target_rotation_marker] at @p positioned 0 ~ 0 facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=shaft_target_rotation_marker] store result score shaft_rotation mapdata run data get entity @s Rotation[0]

scoreboard players operation rotation_delta mapdata = player_rotation mapdata
scoreboard players operation rotation_delta mapdata -= shaft_rotation mapdata

execute store result storage map:data rotation_delta_scaled int 1 run scoreboard players get rotation_delta mapdata
execute store result score rotation_delta_scaled mapdata run data get storage map:data rotation_delta_scaled

scoreboard players operation shaft_target_rotation mapdata = shaft_rotation mapdata
scoreboard players operation shaft_target_rotation mapdata += rotation_delta_scaled mapdata
scoreboard players operation player_target_rotation mapdata = player_rotation mapdata
scoreboard players operation player_target_rotation mapdata -= rotation_delta_scaled mapdata

execute store result entity @e[tag=shaft_target_rotation_marker,limit=1] Rotation[0] float 1 run scoreboard players get shaft_target_rotation mapdata

execute as @p[tag=playing] at @e[tag=shaft_target_rotation_marker] positioned ^ ^ ^5 run tp @s ~ ~ ~

# execute as @e[tag=player_target_rotation_marker] at @p[tag=playing] run tp @s ~ ~ ~ ~ ~ 
# execute store result entity @e[tag=player_target_rotation_marker,limit=1] Rotation[0] float 1 run scoreboard players get player_target_rotation mapdata
# execute as @p[tag=playing] at @e[tag=player_target_rotation_marker] run tp @s ~ ~ ~ ~ ~

# clamp values:
# - detent in middle where rotation delta gets rounded to 0 to make it easy for player to go straight
# - max rotation delta based on hoverboard maneuverability stat

# rotate player based on their rotation delta when TPing so that their rotation delta relative to the center of the shaft appears the same
