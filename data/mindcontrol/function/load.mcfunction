scoreboard objectives add floatgun.click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add mindgun.click minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add floatgun.values dummy
scoreboard objectives add mindgun.values dummy

team add mindgun_victim
team modify mindgun_victim color dark_blue

schedule function mindcontrol:tick_10t 10t
