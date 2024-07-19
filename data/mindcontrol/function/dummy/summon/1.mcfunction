execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Small:1b,ShowArms:1b,Tags:["new_dummy","dummy"]}
item replace entity @n[type=armor_stand,limit=1,tag=new_dummy] armor.chest with leather_chestplate
item replace entity @n[type=armor_stand,limit=1,tag=new_dummy] armor.legs with leather_leggings
item replace entity @n[type=armor_stand,limit=1,tag=new_dummy] armor.feet with leather_boots
loot replace entity @n[type=armor_stand,limit=1,tag=new_dummy] armor.head loot mindcontrol:fph
effect give @n[type=armor_stand,limit=1,tag=new_dummy] slow_falling 3 10 true 
tag @n[type=armor_stand,limit=1,tag=new_dummy] remove new_dummy
