##the owner looting their own grave needs no message
execute if data storage eden:temp keepinv.grave{is_owner:true} run return fail

##the grave registry already told the owner it expired while the chunk was unloaded
execute if data storage eden:temp keepinv.grave{type:"expired",already_notified:true} run return fail

data remove storage eden:temp keepinv.notify
data modify storage eden:temp keepinv.notify.type set value "opened"
execute if data storage eden:temp keepinv.grave{type:"expired"} run data modify storage eden:temp keepinv.notify.type set value "expired"
data modify storage eden:temp keepinv.notify.name set from storage eden:temp keepinv.grave.name

data modify storage eden:temp keepinv.grave.pos set from entity @s Pos
execute store result storage eden:temp keepinv.notify.x int 1 run data get storage eden:temp keepinv.grave.pos[0]
execute store result storage eden:temp keepinv.notify.y int 1 run data get storage eden:temp keepinv.grave.pos[1]
execute store result storage eden:temp keepinv.notify.z int 1 run data get storage eden:temp keepinv.grave.pos[2]

function keepinv:grave/notify/dimension_name
data modify storage eden:temp keepinv.notify.dimension set from storage eden:temp keepinv.dimension_name

function keepinv:grave/notify/find_owner with storage eden:temp keepinv.grave
