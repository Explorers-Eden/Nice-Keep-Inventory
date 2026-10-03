data modify storage eden:temp keepinv.entry set from storage eden:temp keepinv.tracker[0]

execute store result score $remaining keepinv.grave.timer run data get storage eden:temp keepinv.entry.expires_at
scoreboard players operation $remaining keepinv.grave.timer -= $now keepinv.grave.timer

##warn the owner shortly before the grave expires
execute if data storage eden:temp keepinv.entry{warned:false} if score $remaining keepinv.grave.timer matches 1..60 \
    run function keepinv:grave/tracker/announce/expiring

##expired while unloaded: load the chunk so the regular expiry removes the grave and messages the owner
execute if data storage eden:temp keepinv.entry{notified:false,forceloaded:false} if data storage eden:temp keepinv.entry.dim if score $remaining keepinv.grave.timer matches ..0 \
    run function keepinv:grave/tracker/forceload/add with storage eden:temp keepinv.entry

##grave never showed up after loading its chunk (or was registered without a dimension): tell the owner anyway
execute if data storage eden:temp keepinv.entry{notified:false,forceloaded:true} run function keepinv:grave/tracker/forceload/check_timeout
execute if data storage eden:temp keepinv.entry{notified:false} unless data storage eden:temp keepinv.entry.dim if score $remaining keepinv.grave.timer matches ..0 \
    run function keepinv:grave/tracker/announce/expired

data remove storage eden:temp keepinv.tracker[0]
execute if data storage eden:temp keepinv.tracker[0] run function keepinv:grave/tracker/check_entry
