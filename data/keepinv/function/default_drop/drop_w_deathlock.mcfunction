$summon item ~ ~.9 ~ {Owner:$(UUID),Item:$(current_item)}

data remove storage eden:temp keepinv.dropped_items[0]
data modify storage eden:temp keepinv.current_item set from storage eden:temp keepinv.dropped_items[0]

execute if data storage eden:temp keepinv.dropped_items[0] run return run function keepinv:default_drop/drop_w_deathlock with storage eden:temp keepinv