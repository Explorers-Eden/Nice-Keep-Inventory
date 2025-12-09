execute if block ~ ~-1 ~ #keepinv:grave_placeable \
    run return run execute positioned ~ ~-1 ~ run \
        function keepinv:grave/place with storage eden:temp keepinv

execute unless block ~ ~ ~ #keepinv:grave_placeable \
    run return run execute positioned ~ ~1 ~ run \
        function keepinv:grave/place with storage eden:temp keepinv

execute positioned ~ ~ ~ \
    if entity @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] \
        if data storage eden:temp keepinv{direction:1} \
            run return run execute positioned ~ ~ ~.5 run \
                function keepinv:grave/place with storage eden:temp keepinv

execute positioned ~ ~ ~ \
    if entity @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] \
        if data storage eden:temp keepinv{direction:2} \
            run return run execute positioned ~ ~ ~-.5 run \
                function keepinv:grave/place with storage eden:temp keepinv

execute positioned ~ ~ ~ \
    if entity @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] \
        if data storage eden:temp keepinv{direction:3} \
            run return run execute positioned ~.5 ~ ~ run \
                function keepinv:grave/place with storage eden:temp keepinv

execute positioned ~ ~ ~ \
    if entity @e[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] \
        if data storage eden:temp keepinv{direction:4} \
            run return run execute positioned ~-.5 ~ ~ run \
                function keepinv:grave/place with storage eden:temp keepinv

playsound minecraft:particle.soul_escape block @a ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~.25 ~ .1 .1 .1 0 15
particle minecraft:soul ~ ~.75 ~ .4 .4 .4 0.01 5

$execute align xyz positioned ~.5 ~ ~.5 \
    run summon interaction ~ ~ ~ {\
        width:1.01f,\
        height:1.0f,\
        response:1b,\
        Tags:["keepinv.grave.interaction"],\
        data:{\
            grave:\
                {\
                    deathlock:$(deathlock),\
                    uuid:$(UUID),\
                    items:$(dropped_items)\
                }\
            },\
        Passengers:[\
            {\
                id:"minecraft:item_display",\
                Rotation:[$(rotation)F,0F],\
                Tags:["keepinv.grave.display"],\
                Passengers:[\
                    {\
                        id:"minecraft:text_display",\
                        billboard:"vertical",\
                        text_opacity:128,\
                        shadow:1b,\
                        Tags:["keepinv.grave.text"],\
                        transformation:{\
                            left_rotation:[0f,0f,0f,1f],\
                            right_rotation:[0f,0f,0f,1f],\
                            translation:[0f,-.4f,0f],\
                            scale:[.4f,.4f,.4f]\
                        },\
                        text:[\
                            {"fallback":"R.I.P.","translate":"text.keepinv.grave.prefix"},\
                            {"text":"\n$(name)"}\
                        ],\
                    background:16711680\
                }\
            ],\
                transformation:{\
                    left_rotation:[0f,0f,0f,1f],\
                    right_rotation:[0f,0f,0f,1f],\
                    translation:[0f,-.5f,0f],\
                    scale:[1f,1f,1f]\
                },\
                item:{\
                    id:"minecraft:player_head",\
                    count:1,\
                    components:{"minecraft:profile":$(profile)}\
                }\
            }\
        ]\
    }

$execute positioned ~ ~ ~ \
    run scoreboard players set @n[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] keepinv.grave.duration $(duration)

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.removed set value false
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.opened_by set value {}
$execute positioned ~ ~ ~ \
    run data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.uuid \
        set from entity @n[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] UUID

$execute positioned ~ ~ ~ \
    store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.x int 1 \
        run data get entity @n[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] Pos[0]

$execute positioned ~ ~ ~ \
    store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.y int 1 \
        run data get entity @n[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] Pos[1]

$execute positioned ~ ~ ~ \
    store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.z int 1 \
        run data get entity @n[type=minecraft:interaction,tag=keepinv.grave.interaction,distance=..1] Pos[2]

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.dimension \
    set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.dimension

$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_grave.contents \
    set from storage eden:temp keepinv.dropped_items