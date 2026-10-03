##only release the chunk later if we were the ones forceloading it
$execute in $(dim) store success storage eden:temp keepinv.fl_owned byte 1 run forceload add $(x) $(z)

$data modify storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].fl_owned set from storage eden:temp keepinv.fl_owned
$data modify storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].forceloaded set value true
$execute store result storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].fl_at int 1 run scoreboard players get $now keepinv.grave.timer
