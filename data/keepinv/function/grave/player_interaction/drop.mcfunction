$summon item ~ ~ ~ {Item:$(current_item)}

data remove storage eden:temp keepinv.grave.dropped_items[0]
data modify storage eden:temp keepinv.grave.current_item set from storage eden:temp keepinv.grave.dropped_items[0]

execute if data storage eden:temp keepinv.grave.dropped_items[0] run return run function keepinv:grave/player_interaction/drop with storage eden:temp keepinv.grave
function keepinv:grave/remove/exec