schedule function keepinv:grave/remove/int 1s

scoreboard players add @e[type=minecraft:interaction,tag=keepinv.grave.interaction] keepinv.grave.timer 1

execute \
    as @e[type=minecraft:interaction,tag=keepinv.grave.interaction] at @s \
    if score @s keepinv.grave.timer >= @s keepinv.grave.duration \
        run function keepinv:grave/remove/exec