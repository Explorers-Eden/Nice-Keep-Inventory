playsound minecraft:particle.soul_escape block @a ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~.25 ~ .1 .1 .1 0 15
particle minecraft:soul ~ ~.75 ~ .4 .4 .4 0.01 5

$execute if data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave{uuid:$(grave_uuid)} run data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.removed set value true
$execute if data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave{uuid:$(grave_uuid)} run data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.opened_by.name set from storage eden:temp keepinv.grave.name
$execute if data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave{uuid:$(grave_uuid)} run data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.opened_by.uuid set from storage eden:temp keepinv.grave.uuid

execute on passengers run execute on passengers run kill @s
execute on passengers run kill @s
kill @s