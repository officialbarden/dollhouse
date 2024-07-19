scoreboard players remove $Range mindgun.values 1
particle dust{color:[1.000,0.267,0.000],scale:1} ~ ~ ~ 0 0 0 1 0 normal

execute unless entity @n[type=#mindcontrol:interact,dx=0,limit=1] if block ~ ~ ~ #mindcontrol:ground run function mindcontrol:mindgun/use/disengage/1
execute unless entity @n[type=#mindcontrol:interact,dx=0,limit=1] if score $Range mindgun.values matches 1.. positioned ^ ^ ^1 run function mindcontrol:mindgun/use/raycast/2
execute if entity @n[type=#mindcontrol:interact,dx=0,limit=1] run function mindcontrol:mindgun/use/raycast/tag
