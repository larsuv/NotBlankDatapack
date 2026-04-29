execute as @e[type=marker,tag=bullet] at @s if block ~ ~ ~ #guns:raycast_pass run tp ^ ^ ^0.1
execute as @e[type=marker,tag=bullet] at @s unless block ~ ~ ~ #guns:raycast_pass run summon tnt ~ ~ ~ {fuse:0}
execute as @e[type=marker,tag=bullet] at @s unless block ~ ~ ~ #guns:raycast_pass run kill @s
execute as @e[type=marker,tag=bullet] at @s run execute as @e[type=!#guns:not_mob, dx=0, tag=!bullet] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function guns:hit