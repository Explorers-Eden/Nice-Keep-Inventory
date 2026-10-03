$data modify storage eden:temp keepinv.notify_queue set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).grave_notifications
$data remove storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).grave_notifications

execute if data storage eden:temp keepinv.notify_queue[0] run function keepinv:grave/notify/deliver_queue
data remove storage eden:temp keepinv.notify_queue
