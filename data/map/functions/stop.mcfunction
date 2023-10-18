kill @e[tag=game_object]

# debug
gamemode creative @p[tag=playing]

schedule clear map:boost
tag @p[tag=playing] remove game_object
tag @p[tag=playing] remove playing

scoreboard objectives remove mapdata
