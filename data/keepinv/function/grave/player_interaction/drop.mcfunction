$summon item ~ ~ ~ {Item:$(current_item)}
execute as @e[type=item,distance=..0.1] run data modify entity @s Motion[1] set value 0.3

data remove storage eden:temp keepinv.grave.dropped_items[0]
data modify storage eden:temp keepinv.grave.current_item set from storage eden:temp keepinv.grave.dropped_items[0]

execute if data storage eden:temp keepinv.grave.dropped_items[0] run return run function keepinv:grave/player_interaction/drop with storage eden:temp keepinv.grave
function keepinv:grave/remove/exec with storage eden:temp keepinv.grave