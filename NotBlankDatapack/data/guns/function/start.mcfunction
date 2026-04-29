# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute as @s at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["bullet"],Motion:[0.0,0.0,0.0]}
execute as @s at @s run data modify entity @e[type=marker,tag=bullet,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[type=marker,tag=bullet,limit=1,sort=nearest] at @s run function guns:get_away_from_player
playsound larscrafter:gun.shot ambient @a ~ ~ ~ 5 1 1