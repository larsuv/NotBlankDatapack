title @p title {"text": "!!WARNING LOUD MUSIC!!","color": "#FF0000"}
execute as @p at @p run playsound larscrafter:blank.alarm ambient @s ~ ~ ~ 0.1 2
execute as @p at @p run schedule function basicfunctions:countdown3 2s
execute as @p at @p run schedule function music:actual_earrape 5s