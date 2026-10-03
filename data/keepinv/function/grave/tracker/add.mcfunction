##register the grave globally so it can expire on time while its chunk is unloaded
data remove storage eden:temp keepinv.tracker_entry
data modify storage eden:temp keepinv.tracker_entry set value {notified:false,warned:false,forceloaded:false,fl_owned:0b}
data modify storage eden:temp keepinv.tracker_entry.grave_uuid set from entity @s UUID
data modify storage eden:temp keepinv.tracker_entry.uuid_0 set from entity @s data.grave.uuid[0]
data modify storage eden:temp keepinv.tracker_entry.uuid_1 set from entity @s data.grave.uuid[1]
data modify storage eden:temp keepinv.tracker_entry.uuid_2 set from entity @s data.grave.uuid[2]
data modify storage eden:temp keepinv.tracker_entry.uuid_3 set from entity @s data.grave.uuid[3]

scoreboard players operation $expires keepinv.grave.timer = @s keepinv.grave.created
scoreboard players operation $expires keepinv.grave.timer += @s keepinv.grave.duration
execute store result storage eden:temp keepinv.tracker_entry.expires_at int 1 run scoreboard players get $expires keepinv.grave.timer

##a "less than a minute left" warning makes no sense for graves that only last a minute
execute if score @s keepinv.grave.duration matches ..60 run data modify storage eden:temp keepinv.tracker_entry.warned set value true

data modify storage eden:temp keepinv.tracker_entry.dim set from storage eden:temp keepinv.dimension
execute store result storage eden:temp keepinv.tracker_entry.x int 1 run data get entity @s Pos[0]
execute store result storage eden:temp keepinv.tracker_entry.y int 1 run data get entity @s Pos[1]
execute store result storage eden:temp keepinv.tracker_entry.z int 1 run data get entity @s Pos[2]

data modify storage eden:temp keepinv.tracker_entry.notify.x set from storage eden:temp keepinv.tracker_entry.x
data modify storage eden:temp keepinv.tracker_entry.notify.y set from storage eden:temp keepinv.tracker_entry.y
data modify storage eden:temp keepinv.tracker_entry.notify.z set from storage eden:temp keepinv.tracker_entry.z
function keepinv:grave/notify/dimension_name
data modify storage eden:temp keepinv.tracker_entry.notify.dimension set from storage eden:temp keepinv.dimension_name

data modify storage eden:database keepinv.graves append from storage eden:temp keepinv.tracker_entry
