advancement revoke @s only keepinv:grave/left_click
advancement revoke @s only keepinv:grave/right_click

data remove storage eden:temp keepinv.grave
data modify storage eden:temp keepinv.grave.UUID set from entity @s UUID

execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s attack at @s run function keepinv:grave/player_interaction/exec with storage eden:temp keepinv.grave
execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s interaction at @s run function keepinv:grave/player_interaction/exec with storage eden:temp keepinv.grave

execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s attack at @s run data remove entity @s attack
execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s interaction at @s run data remove entity @s interaction