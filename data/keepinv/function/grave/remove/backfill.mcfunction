##graves placed before the creation time was tracked keep their elapsed time
scoreboard players add @s keepinv.grave.timer 0
scoreboard players operation @s keepinv.grave.created = $now keepinv.grave.timer
scoreboard players operation @s keepinv.grave.created -= @s keepinv.grave.timer
