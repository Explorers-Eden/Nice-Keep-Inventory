data modify storage eden:temp keepinv.notify set from storage eden:temp keepinv.notify_queue[0]
function keepinv:grave/notify/send

data remove storage eden:temp keepinv.notify_queue[0]
execute if data storage eden:temp keepinv.notify_queue[0] run function keepinv:grave/notify/deliver_queue
