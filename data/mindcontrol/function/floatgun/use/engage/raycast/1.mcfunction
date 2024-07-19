#say you engaged your floatgun!

item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{"being_used":true}}
scoreboard players reset @s floatgun.click
tag @s add using.floatgun

scoreboard players set $Range floatgun.values 10
execute anchored eyes positioned ^ ^ ^1 run function mindcontrol:floatgun/use/engage/raycast/2

