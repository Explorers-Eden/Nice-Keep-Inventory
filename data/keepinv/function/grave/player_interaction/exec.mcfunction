$execute \
    if data entity @s data.grave{deathlock:true} \
        run execute unless data entity @s data.grave{uuid:$(UUID)} run return fail

data modify storage eden:temp keepinv.grave.dropped_items set from entity @s data.grave.items
data modify storage eden:temp keepinv.grave.current_item set from entity @s data.grave.items[0]
function keepinv:grave/player_interaction/drop with storage eden:temp keepinv.grave