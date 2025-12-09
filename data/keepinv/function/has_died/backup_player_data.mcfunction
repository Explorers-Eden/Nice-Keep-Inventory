data modify storage eden:temp keepinv.death_inventory set from entity @s Inventory
data modify storage eden:temp keepinv.death_equipment set from entity @s equipment

$data remove storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.inventory set from storage eden:temp keepinv.death_inventory
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.equipment set from storage eden:temp keepinv.death_equipment

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.filtered set from storage eden:temp keepinv.dropped_items

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).displayname set from storage eden:temp keepinv.name

$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).experience.levels int 1 run experience query @s levels
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).experience.points int 1 run experience query @s points

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_death_loc.x set from entity @s LastDeathLocation.pos[0]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_death_loc.y set from entity @s LastDeathLocation.pos[1]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_death_loc.z set from entity @s LastDeathLocation.pos[2]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_death_loc.dimension set from entity @s LastDeathLocation.dimension