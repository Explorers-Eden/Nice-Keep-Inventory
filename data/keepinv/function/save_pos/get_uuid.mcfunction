execute unless score @s keepinv.uuid.0 = @s keepinv.uuid.0 run function keepinv:save_pos/store_uuid
execute store result storage eden:temp safe_pos.uuid_0 int 1 run scoreboard players get @s keepinv.uuid.0
execute store result storage eden:temp safe_pos.uuid_1 int 1 run scoreboard players get @s keepinv.uuid.1
execute store result storage eden:temp safe_pos.uuid_2 int 1 run scoreboard players get @s keepinv.uuid.2
execute store result storage eden:temp safe_pos.uuid_3 int 1 run scoreboard players get @s keepinv.uuid.3

data modify storage eden:temp safe_pos.pos set from entity @s Pos
data modify storage eden:temp safe_pos.dimension set from entity @s Dimension

function keepinv:save_pos/store_pos with storage eden:temp safe_pos
