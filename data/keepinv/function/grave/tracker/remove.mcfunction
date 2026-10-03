data remove storage eden:temp keepinv.grave.already_notified
data remove storage eden:temp keepinv.entry
$data modify storage eden:temp keepinv.entry set from storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}]

execute if data storage eden:temp keepinv.entry{notified:true} run data modify storage eden:temp keepinv.grave.already_notified set value true
execute if data storage eden:temp keepinv.entry{fl_owned:1b} run function keepinv:grave/tracker/forceload/remove with storage eden:temp keepinv.entry

$data remove storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}]
