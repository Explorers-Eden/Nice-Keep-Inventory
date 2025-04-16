advancement revoke @s only keepinv:has_died

clear @s *[minecraft:enchantments~[{enchantments: "minecraft:vanishing_curse"}]]

execute if predicate eden:percentages/30 run loot spawn ~ ~ ~ loot eden:gameplay/player_head
function keepinv:exp_lost/start

execute if items entity @s armor.* #minecraft:enchantable/armor[minecraft:enchantments~[{enchantments: "keepinv:safekeep"}]] run return run function keepinv:safekeep

data remove storage eden:temp keepinv

function keepinv:droppable_items/store
function keepinv:droppable_items/clear

data modify storage eden:temp keepinv.drop.UUID set from entity @s UUID
data modify storage eden:temp keepinv.drop.item set from storage eden:temp keepinv.dropped_items[0]

execute if data storage eden:temp keepinv.dropped_items[0] if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:deathlock"}]] run return run function keepinv:droppable_items/drop_w_deathlock with storage eden:temp keepinv.drop
execute if data storage eden:temp keepinv.dropped_items[0] if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:gravehold"}]] run return run function keepinv:droppable_items/drop_w_gravehold with storage eden:temp keepinv.drop
execute if data storage eden:temp keepinv.dropped_items[0] run return run function keepinv:droppable_items/drop with storage eden:temp keepinv.drop
