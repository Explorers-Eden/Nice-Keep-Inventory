data modify storage eden:temp keepinv.grave.uuid_0 set from entity @s data.grave.uuid[0]
data modify storage eden:temp keepinv.grave.uuid_1 set from entity @s data.grave.uuid[1]
data modify storage eden:temp keepinv.grave.uuid_2 set from entity @s data.grave.uuid[2]
data modify storage eden:temp keepinv.grave.uuid_3 set from entity @s data.grave.uuid[3]

data modify storage eden:temp keepinv.grave.name set value "expired"
data modify storage eden:temp keepinv.grave.uuid set value []

data modify storage eden:temp keepinv.grave.grave_uuid set from entity @s UUID

function keepinv:grave/remove/exec with storage eden:temp keepinv.grave