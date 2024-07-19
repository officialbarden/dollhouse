#say you disengaged your mindgun!


execute anchored eyes run function mindcontrol:mindgun/use/disengage/raycast/1

item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{"being_used":false}}
scoreboard players reset @s mindgun.click
tag @s remove using.mindgun
team leave @n[type=#mindcontrol:interact,tag=mindgun.victim]
data modify entity @n[type=#mindcontrol:interact,tag=mindgun.victim] Glowing set value false
tag @n[type=#mindcontrol:interact,tag=mindgun.victim] remove mindgun.victim
