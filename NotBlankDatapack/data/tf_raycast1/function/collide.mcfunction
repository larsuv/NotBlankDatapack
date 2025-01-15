## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


# Detect Headshots/bodyshots/legshots
summon tnt

execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s 40 magic

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s 20 magic

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s 10 magic






#### Max out range to end the raycast
scoreboard players set .distance tf_rc 3000

