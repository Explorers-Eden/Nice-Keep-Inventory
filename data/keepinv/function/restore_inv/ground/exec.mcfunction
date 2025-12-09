$summon item ~ ~.9 ~ {Item:$(current_item)}

data remove storage eden:temp keepinv.restore.items[0]
data remove storage eden:temp keepinv.restore.items[0].Slot
data modify storage eden:temp keepinv.restore.current_item set from storage eden:temp keepinv.restore.items[0]

execute if data storage eden:temp keepinv.restore.items[0] run return run function keepinv:restore_inv/ground/exec with storage eden:temp keepinv.restore