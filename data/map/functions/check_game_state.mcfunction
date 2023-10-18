execute as @p[tag=playing] if entity @s unless entity @s[tag=playing,x=-7,y=-64,z=-7,dx=15,dy=384,dz=15] run function map:stop
