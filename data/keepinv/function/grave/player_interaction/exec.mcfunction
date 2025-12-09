$execute \
    if data entity @s data.grave{deathlock:true} \
        run execute unless data entity @s data.grave{uuid:$(uuid)} run return fail

data modify storage eden:temp keepinv.grave.dropped_items set from entity @s data.grave.items
data modify storage eden:temp keepinv.grave.current_item set from entity @s data.grave.items[0]
data modify storage eden:temp keepinv.grave.grave_uuid set from entity @s UUID

data modify storage eden:temp keepinv.grave.uuid_0 set from entity @s data.grave.uuid[0]
data modify storage eden:temp keepinv.grave.uuid_1 set from entity @s data.grave.uuid[1]
data modify storage eden:temp keepinv.grave.uuid_2 set from entity @s data.grave.uuid[2]
data modify storage eden:temp keepinv.grave.uuid_3 set from entity @s data.grave.uuid[3]

function keepinv:grave/player_interaction/drop with storage eden:temp keepinv.grave