## Run from tf_raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#tf_raycast1:not_moba,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function tf_raycast1:collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:smoke ~ ~ ~ 0 0 0 0 0


# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..3000 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #tf_raycast1:raycast_passa run summon tnt
execute if score .distance tf_rc matches ..3000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #tf_raycast1:raycast_passa run function tf_raycast1:raycast
