execute as @a[tag=using.floatgun] unless predicate mindcontrol:floatgun/hold run function mindcontrol:floatgun/use/disengage/1
execute as @a[tag=!using.floatgun] if predicate mindcontrol:floatgun/hold run item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{"being_used":false}}
execute as @a[tag=using.floatgun] at @s if predicate mindcontrol:sneaking run tag @s add floatgun.launch
execute as @a[tag=using.floatgun] at @s unless predicate mindcontrol:sneaking run tag @s remove floatgun.launch
execute as @a[tag=!using.floatgun,tag=floatgun.launch] at @s run function mindcontrol:floatgun/use/launch/1
execute as @a at @s if predicate mindcontrol:floatgun/engage run function mindcontrol:floatgun/use/engage/raycast/1
execute as @a at @s if predicate mindcontrol:floatgun/disengage run function mindcontrol:floatgun/use/disengage/1
execute as @a[tag=using.floatgun] at @s anchored eyes run tp @n[type=item_display,tag=floatgun.prop.vehicle,limit=1] ^ ^ ^3


execute as @a at @s if predicate mindcontrol:mindgun/engage run function mindcontrol:mindgun/use/raycast/1
execute as @a at @s if predicate mindcontrol:mindgun/disengage run function mindcontrol:mindgun/use/disengage/1

execute as @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}}] at @s run setblock ~ ~ ~ scaffolding
execute as @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}}] run kill @s

execute as @e[tag=mindgun.walking] at @s as @n[type=zombified_piglin,tag=pathfinder.temp] at @s run tp @n[tag=mindgun.walking] @s

execute as @e[type=villager,tag=pathfind.temp] at @s run particle end_rod ~ ~ ~ 0 1 0 0 5 force @a

tp @e[type=zombie_villager] ~ ~-300 ~
execute unless entity @e[type=villager,tag=pathfind.temp] run tag @e remove mindgun.walking
execute unless entity @e[type=villager,tag=pathfind.temp] run tp @e[type=zombified_piglin] ~ ~-300 ~

kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"}}]
