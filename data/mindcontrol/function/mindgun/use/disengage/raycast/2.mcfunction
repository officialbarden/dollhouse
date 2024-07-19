scoreboard players remove $Range mindgun.values 1
execute unless block ~ ~ ~ #mindcontrol:air align xyz positioned ~0.5 ~ ~0.5 summon marker run function mindcontrol:mindgun/use/disengage/raycast/3
execute if block ~ ~ ~ #mindcontrol:air positioned ^ ^ ^1 if score $Range mindgun.values matches 1.. run function mindcontrol:mindgun/use/disengage/raycast/2
