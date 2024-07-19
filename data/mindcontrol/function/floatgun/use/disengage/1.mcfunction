#say you disengaged your floatgun!

kill @n[type=item_display,tag=floatgun.prop.vehicle,limit=1]
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{"being_used":false}}
scoreboard players reset @s floatgun.click
tag @s remove using.floatgun
