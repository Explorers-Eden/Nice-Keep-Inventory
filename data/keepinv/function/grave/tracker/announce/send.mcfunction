$data modify storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].$(flag) set value true

data remove storage eden:temp keepinv.notify
data modify storage eden:temp keepinv.notify set from storage eden:temp keepinv.entry.notify
$data modify storage eden:temp keepinv.notify.type set value "$(type)"

function keepinv:grave/notify/find_owner with storage eden:temp keepinv.entry
