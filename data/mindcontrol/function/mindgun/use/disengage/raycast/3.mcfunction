summon villager 0 0 0 {Tags:["pathfind.temp"],NoAI:1b,NoGravity:1b,Silent:1b,Health:1f,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}]}
tp @n[type=villager,tag=pathfind.temp,limit=1] ~ ~5 ~

effect give @n[type=villager,tag=pathfind.temp,limit=1] invisibility infinite 1 true
function mindcontrol:mindgun/use/engage/walk/1
kill @s