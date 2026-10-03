schedule function keepinv:save_pos/init 1s

execute as @a at @s \
    unless block ~ ~-1 ~ #keepinv:grave_placeable \
    if block ~ ~ ~ #keepinv:grave_placeable \
        run function keepinv:save_pos/get_uuid

##deliver grave notifications queued while the player was offline
execute as @a[scores={keepinv.leave_game=1..}] run function keepinv:grave/notify/on_join