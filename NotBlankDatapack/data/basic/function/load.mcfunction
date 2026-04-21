tellraw @a [{"text": "Finished loading NotBlankDatapack!","color": "#00FF00","bold": true},{"text": " v 1.5.6 ","color": "#505050","bold": false},{"text":"r","color":"red"},{"text":"a","color":"gold"},{"text":"i","color":"yellow"},{"text":"n","color":"green"},{"text":"b","color":"aqua"},{"text":"o","color":"blue"},{"text":"w","color":"dark_purple"}]
tellraw @a {"text": "Most functions use the 'custom-records-LarsCrafter14-1-21' resourcepack.","color": "#AAAAAA"}
scoreboard objectives add RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add tf_rc dummy
scoreboard objectives add timeout dummy
scoreboard objectives add offenses dummy
team add jailed Jail
team modify jailed friendlyFire false
team modify jailed collisionRule never
team modify jailed prefix "Near Jail "
