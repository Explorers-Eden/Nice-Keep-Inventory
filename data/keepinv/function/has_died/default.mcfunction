data modify storage eden:temp keepinv.UUID set from entity @s UUID
data modify storage eden:temp keepinv.current_item set from storage eden:temp keepinv.dropped_items[0]

execute if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:deathlock"}]] run return run function keepinv:default_drop/drop_w_deathlock with storage eden:temp keepinv
execute if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:gravehold"}]] run return run function keepinv:default_drop/drop_w_gravehold with storage eden:temp keepinv
function keepinv:default_drop/drop with storage eden:temp keepinv