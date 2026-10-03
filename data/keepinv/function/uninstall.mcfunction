data remove storage eden:temp keepinv
data remove storage eden:settings keepinv
data remove storage eden:datapack nice_keep_inventory
data remove storage eden:database keepinv

scoreboard objectives remove keepinv.grave.timer
scoreboard objectives remove keepinv.grave.duration
scoreboard objectives remove keepinv.grave.created
scoreboard objectives remove keepinv.leave_game

gamerule keep_inventory false

playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
tellraw @s [\
    {"color":"red","text":"▊ "},\
    {"color":"white","text":"Files for Nice Keep Inventory have been removed."}\
]