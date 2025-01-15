##clear scoreboard
scoreboard objectives remove keepinv.item_age

##remove temp storage
data remove storage eden:temp keepinv

##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add keepinv.has_died deathCount
scoreboard objectives add keepinv.item_age dummy

##init schedules
schedule function keepinv:run 1t
schedule function keepinv:unlock_items 1s

##set gamerules
gamerule keepInventory true