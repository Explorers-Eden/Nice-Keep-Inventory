scoreboard players reset @s keepinv.leave_game

##refresh the cached UUID scores so find_owner can match this player
function keepinv:save_pos/store_uuid

execute store result storage eden:temp keepinv.join.uuid_0 int 1 run scoreboard players get @s keepinv.uuid.0
execute store result storage eden:temp keepinv.join.uuid_1 int 1 run scoreboard players get @s keepinv.uuid.1
execute store result storage eden:temp keepinv.join.uuid_2 int 1 run scoreboard players get @s keepinv.uuid.2
execute store result storage eden:temp keepinv.join.uuid_3 int 1 run scoreboard players get @s keepinv.uuid.3

function keepinv:grave/notify/get_queue with storage eden:temp keepinv.join
