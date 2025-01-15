data remove storage eden:temp keepinv
clear @s *[enchantments~[{enchantments: "minecraft:vanishing_curse"}]]

function keepinv:droppable_items/store
function keepinv:droppable_items/clear

data modify storage eden:temp keepinv.deathloc.Pos0 set from entity @s LastDeathLocation.pos[0]
data modify storage eden:temp keepinv.deathloc.Pos1 set from entity @s LastDeathLocation.pos[1]
data modify storage eden:temp keepinv.deathloc.Pos2 set from entity @s LastDeathLocation.pos[2]
data modify storage eden:temp keepinv.deathloc.Dimension set from entity @s LastDeathLocation.dimension
data modify storage eden:temp keepinv.deathloc.UUID set from entity @s UUID

# To-Do: add enchantment for locking item pickup to player (and maaaaybbeeeee also one for shulker boxes so they dont drop)
# Also add DEATHLINK which gives off creaking particles leading to death loc
# Don't forget Exp loss functions

execute if data storage eden:temp keepinv.dropped_items[0] run function keepinv:droppable_items/drop with storage eden:temp keepinv.deathloc
function keepinv:droppable_items/player_head with storage eden:temp keepinv.deathloc

scoreboard players set @s keepinv.has_died 0