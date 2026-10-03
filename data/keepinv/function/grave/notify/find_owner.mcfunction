##message the owner if online, otherwise queue it until they join again
data modify storage eden:temp keepinv.notify_delivered set value false

$execute as @a \
    if score @s keepinv.uuid.0 matches $(uuid_0) \
    if score @s keepinv.uuid.1 matches $(uuid_1) \
    if score @s keepinv.uuid.2 matches $(uuid_2) \
    if score @s keepinv.uuid.3 matches $(uuid_3) \
        run function keepinv:grave/notify/send

execute if data storage eden:temp keepinv{notify_delivered:true} run return 1

##an expiry warning is useless once the player is back
execute if data storage eden:temp keepinv.notify{type:"expiring"} run return fail

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).grave_notifications append from storage eden:temp keepinv.notify
