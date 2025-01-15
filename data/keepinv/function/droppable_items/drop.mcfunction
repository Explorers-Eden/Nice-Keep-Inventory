$summon item ~ 600 ~ {Tags:["dropped"],Owner:$(UUID),Item:{id:"minecraft:stone",Count:1b}}
execute positioned ~ 600 ~ run data modify entity @n[type=item,tag=dropped] Item set from storage eden:temp keepinv.dropped_items[0]

$execute in $(Dimension) run tp @e[type=item,tag=dropped] $(Pos0) $(Pos1).9 $(Pos2)

tag @e[type=item,tag=dropped] remove dropped
data remove storage eden:temp keepinv.dropped_items[0]

execute if data storage eden:temp keepinv.dropped_items[0] run return run function keepinv:droppable_items/drop with storage eden:temp keepinv.deathloc