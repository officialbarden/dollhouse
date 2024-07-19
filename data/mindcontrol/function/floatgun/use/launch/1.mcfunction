execute as @n[type=falling_block,nbt={BlockState:{Name:"minecraft:tnt"}}] at @s run summon tnt ~ ~ ~ {fuse:40,Tags:["floatgun.prop.launch"]}
execute as @n[type=falling_block,nbt={BlockState:{Name:"minecraft:tnt"}}] run kill @s
tag @n[type=falling_block,limit=1,tag=floatgun.prop] add floatgun.prop.launch

execute positioned .0 0 .0 positioned ^ ^ ^1 summon marker run function mindcontrol:floatgun/use/launch/2
tag @s remove floatgun.launch