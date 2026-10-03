schedule function keepinv:grave/remove/int 1s

execute store result score $now keepinv.grave.timer run time query gametime
scoreboard players operation $now keepinv.grave.timer /= $20 keepinv.grave.timer

execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction] unless score @s keepinv.grave.created = @s keepinv.grave.created run function keepinv:grave/remove/backfill

execute if data storage eden:settings keepinv{grave_timer:"world_time"} as @e[type=minecraft:interaction,tag=keepinv.grave.interaction] run function keepinv:grave/remove/world_time
execute unless data storage eden:settings keepinv{grave_timer:"world_time"} run scoreboard players add @e[type=minecraft:interaction,tag=keepinv.grave.interaction] keepinv.grave.timer 1

execute if data storage eden:settings keepinv{grave_duration:0} run return fail

execute \
    as @e[type=minecraft:interaction,tag=keepinv.grave.interaction] at @s \
    if score @s keepinv.grave.timer >= @s keepinv.grave.duration \
        run function keepinv:grave/remove/get_data

##announce expiring/expired graves even while their chunk is unloaded
execute if data storage eden:settings keepinv{grave_timer:"world_time"} if data storage eden:database keepinv.graves[{notified:false}] run function keepinv:grave/tracker/check