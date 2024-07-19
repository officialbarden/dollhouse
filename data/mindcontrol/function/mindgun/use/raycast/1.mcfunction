#say you engaged your mindgun!

kill @e[type=villager,tag=pathfind.temp]
kill @e[type=zombified_piglin,tag=pathfinder.temp]

item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{"being_used":true}}
scoreboard players reset @s mindgun.click
tag @s add using.mindgun

scoreboard players set $Range mindgun.values 10
execute anchored eyes positioned ^ ^ ^1 run function mindcontrol:mindgun/use/raycast/2
