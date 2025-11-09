##remove temp storage
data remove storage eden:temp keepinv

##apply default values on first load
execute unless data storage eden:settings keepinv run function keepinv:default_values

##add scoreboards
scoreboard objectives add keepinv.grave.timer dummy
scoreboard objectives add keepinv.grave.duration dummy

##set gamerules
gamerule keepInventory true

##set data pack version
data modify storage eden:datapack nice_keep_inventory.version set value "2.5"