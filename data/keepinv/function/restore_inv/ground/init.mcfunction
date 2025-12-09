$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"filtered"} \
    unless data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.filtered \
        run return run tellraw @s [\
            {"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
            {"bold":false,"color":"white","italic":false,"translate":"text.keepinv.no_saved_inventory"}\
        ]

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
    unless data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw \
        run return run tellraw @s [\
            {"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
            {"bold":false,"color":"white","italic":false,"translate":"text.keepinv.no_saved_inventory"}\
        ]

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"filtered"} \
        run data modify storage eden:temp keepinv.restore.items set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.filtered

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
        run data modify storage eden:temp keepinv.restore.items set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.inventory

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
        run data modify storage eden:temp keepinv.restore.items append from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.equipment.chest

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
        run data modify storage eden:temp keepinv.restore.items append from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.equipment.legs

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
        run data modify storage eden:temp keepinv.restore.items append from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.equipment.offhand

$execute \
    if data storage eden:temp keepinv.restore{inventory_type:"raw"} \
        run data modify storage eden:temp keepinv.restore.items append from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).death_inventory.raw.equipment.head

data remove storage eden:temp keepinv.restore.items[0].Slot
data modify storage eden:temp keepinv.restore.current_item set from storage eden:temp keepinv.restore.items[0]

function keepinv:restore_inv/ground/exec with storage eden:temp keepinv.restore