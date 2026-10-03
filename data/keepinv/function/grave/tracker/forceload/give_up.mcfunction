$data modify storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].forceloaded set value false
$data modify storage eden:database keepinv.graves[{grave_uuid:$(grave_uuid)}].fl_owned set value 0b
function keepinv:grave/tracker/announce/expired
