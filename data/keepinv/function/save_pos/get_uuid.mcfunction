execute unless score @s keepinv.uuid.0 = @s keepinv.uuid.0 run function keepinv:save_pos/store_uuid
execute store result storage eden:temp safe_pos.uuid_0 int 1 run scoreboard players get @s keepinv.uuid.0
execute store result storage eden:temp safe_pos.uuid_1 int 1 run scoreboard players get @s keepinv.uuid.1
execute store result storage eden:temp safe_pos.uuid_2 int 1 run scoreboard players get @s keepinv.uuid.2
execute store result storage eden:temp safe_pos.uuid_3 int 1 run scoreboard players get @s keepinv.uuid.3

# Position from a marker at the player and the dimension from checks: reading them from the player turns their whole inventory into NBT
execute summon minecraft:marker run function keepinv:save_pos/read_pos
data modify storage eden:temp safe_pos.dimension set value ""
execute if dimension minecraft:overworld run data modify storage eden:temp safe_pos.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage eden:temp safe_pos.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage eden:temp safe_pos.dimension set value "minecraft:the_end"
execute if data storage eden:temp safe_pos{dimension:""} run data modify storage eden:temp safe_pos.dimension set from entity @s Dimension

function keepinv:save_pos/store_pos with storage eden:temp safe_pos
