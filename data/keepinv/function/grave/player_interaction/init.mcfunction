advancement revoke @s only keepinv:grave/left_click
advancement revoke @s only keepinv:grave/right_click

data remove storage eden:temp keepinv.grave
data modify storage eden:temp keepinv.grave.uuid set from entity @s UUID

loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp keepinv.grave.name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile.name
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1]

execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s attack at @s run function keepinv:grave/player_interaction/exec with storage eden:temp keepinv.grave
execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s interaction at @s run function keepinv:grave/player_interaction/exec with storage eden:temp keepinv.grave

execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s attack at @s run data remove entity @s attack
execute as @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..16] if data entity @s interaction at @s run data remove entity @s interaction