data remove storage eden:temp keepinv.restore

$data modify storage eden:temp keepinv.restore.uuid_0 set from entity $(playername) UUID[0]
$data modify storage eden:temp keepinv.restore.uuid_1 set from entity $(playername) UUID[1]
$data modify storage eden:temp keepinv.restore.uuid_2 set from entity $(playername) UUID[2]
$data modify storage eden:temp keepinv.restore.uuid_3 set from entity $(playername) UUID[3]
$data modify storage eden:temp keepinv.restore.inventory_type set value $(inventory_type)
$data modify storage eden:temp keepinv.restore.item_type set value $(item_type)

execute at @s \
    if data storage eden:temp keepinv.restore{item_type:"ground"} \
        run function keepinv:restore_inv/ground/init with storage eden:temp keepinv.restore

execute at @s \
    if data storage eden:temp keepinv.restore{item_type:"shulker"} \
        run function keepinv:restore_inv/shulker/init with storage eden:temp keepinv.restore