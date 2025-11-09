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

playsound minecraft:ui.hud.bubble_pop block @a ~ ~ ~ 0.75 0.3
particle minecraft:poof ~ ~.25 ~ .1 .1 .1 0 15   

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