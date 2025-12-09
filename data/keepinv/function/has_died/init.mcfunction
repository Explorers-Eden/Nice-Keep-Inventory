advancement revoke @s only keepinv:has_died
data remove storage eden:temp keepinv

clear @s *[minecraft:enchantments~[{enchantments: "minecraft:vanishing_curse"}]]

execute \
    if data storage eden:settings keepinv{player_head_drop:"enabled"} \
    if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"keepinv.player_head_drop_chance"}} \
        run loot give @s loot keepinv:gameplay/player_head

execute if data storage eden:settings keepinv{exp_loss:"enabled"} run function keepinv:exp_lost/start with storage eden:settings keepinv

loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp keepinv.name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile.name
data modify storage eden:temp keepinv.profile set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1]

function keepinv:droppable_items/store with storage eden:settings keepinv

data modify storage eden:temp keepinv.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp keepinv.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp keepinv.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp keepinv.uuid_3 set from entity @s UUID[3]

function keepinv:has_died/backup_player_data with storage eden:temp keepinv
execute if items entity @s armor.* #minecraft:enchantable/armor[minecraft:enchantments~[{enchantments: "keepinv:safekeep"}]] run return run function keepinv:safekeep

function keepinv:droppable_items/clear with storage eden:settings keepinv

execute unless data storage eden:temp keepinv.dropped_items[0] run return fail
execute if data storage eden:settings keepinv{grave_status:"enabled"} run return run function keepinv:has_died/get_pos with storage eden:temp keepinv
execute unless data storage eden:settings keepinv{grave_status:"enabled"} run return run function keepinv:has_died/default