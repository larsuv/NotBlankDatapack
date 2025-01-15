execute as @a at @s if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{1:1}}}}] run summon minecraft:tnt ~ ~ ~
execute as @a at @s if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{1:2}}}}] run function tf_raycast1:start_raycast
execute as @a at @s if entity @s[scores={RightClick=1..}] run scoreboard players reset @s RightClick
