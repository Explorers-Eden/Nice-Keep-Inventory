schedule function keepinv:save_pos/init 1s

execute as @a at @s \
    unless block ~ ~-1 ~ #keepinv:grave_placeable \
    if block ~ ~ ~ #keepinv:grave_placeable \
        run function keepinv:save_pos/get_uuid