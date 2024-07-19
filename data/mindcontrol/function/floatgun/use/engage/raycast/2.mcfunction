scoreboard players remove $Range floatgun.values 1
particle dust{color:[0.000,1.000,0.867],scale:1} ~ ~ ~ 0 0 0 0 1 force @a

execute if block ~ ~ ~ #mindcontrol:air if score $Range floatgun.values matches 1.. positioned ^ ^ ^1 run function mindcontrol:floatgun/use/engage/raycast/2
execute unless block ~ ~ ~ #mindcontrol:air run function mindcontrol:floatgun/use/engage/raycast/filter
