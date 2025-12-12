##remove temp storage
data remove storage eden:temp keepinv

##apply default values on first load
execute unless data storage eden:settings keepinv run function keepinv:default_values

##add scoreboards
scoreboard objectives add keepinv.grave.timer dummy
scoreboard objectives add keepinv.grave.duration dummy

##set gamerules
gamerule keep_inventory true

##set grave duration in case it got deleted
execute store result score $grave_duration keepinv.grave.duration run data get storage eden:settings keepinv.grave_duration 60

##set data pack version
data modify storage eden:datapack nice_keep_inventory.version set value "2.6.1"