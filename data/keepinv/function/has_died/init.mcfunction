advancement revoke @s only keepinv:has_died

clear @s *[minecraft:enchantments~[{enchantments: "minecraft:vanishing_curse"}]]

execute \
    if data storage eden:settings keepinv{player_head_drop:"enabled"} \
    if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"keepinv.player_head_drop_chance"}} \
        run loot spawn ~ ~ ~ loot keepinv:gameplay/player_head

execute if data storage eden:settings keepinv{exp_loss:"enabled"} run function keepinv:exp_lost/start with storage eden:settings keepinv

execute if items entity @s armor.* #minecraft:enchantable/armor[minecraft:enchantments~[{enchantments: "keepinv:safekeep"}]] run return run function keepinv:safekeep

data remove storage eden:temp keepinv

function keepinv:droppable_items/store with storage eden:settings keepinv
function keepinv:droppable_items/clear with storage eden:settings keepinv

execute unless data storage eden:temp keepinv.dropped_items[0] run return fail
execute if data storage eden:settings keepinv{grave_status:"enabled"} run return run function keepinv:has_died/grave
execute unless data storage eden:settings keepinv{grave_status:"enabled"} run return run function keepinv:has_died/default