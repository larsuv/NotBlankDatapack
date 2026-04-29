execute as @e[type=marker,tag=bullet] at @s if block ~ ~ ~ #guns:raycast_pass run tp ^ ^ ^0.1
execute as @e[type=marker,tag=bullet] at @s run execute as @e[type=player, dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run execute as @e[type=marker,tag=bullet, limit=1, sort=nearest] run function guns:get_away_from_player
execute as @e[type=marker,tag=bullet] at @s if block ~ ~ ~ #guns:raycast_pass run function guns:bullet
execute as @e[type=marker,tag=bullet] at @s unless block ~ ~ ~ #guns:raycast_pass run summon tnt ~ ~ ~ {fuse:0}
execute as @e[type=marker,tag=bullet] at @s unless block ~ ~ ~ #guns:raycast_pass run kill @s