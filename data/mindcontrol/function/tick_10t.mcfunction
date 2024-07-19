execute as @e[type=armor_stand] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute as @e[type=villager,tag=pathfind.temp] at @s positioned ~ ~-4 ~ if entity @n[type=zombified_piglin,tag=pathfinder.temp,dy=5,dx=0.4] run kill @s
schedule function mindcontrol:tick_10t 10t