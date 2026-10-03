data modify storage eden:temp keepinv.notify_delivered set value true
function keepinv:grave/notify/stringify_pos with storage eden:temp keepinv.notify
execute store result score $notify_variant keepinv.grave.timer run random value 1..10

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 1 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.1","fallback":"Your grave was looted by %s","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 2 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.2","fallback":"%s rummaged through your grave","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 3 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.3","fallback":"Your rest was disturbed: %s emptied your grave","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 4 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.4","fallback":"%s helped themselves to your grave","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 5 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.5","fallback":"Your grave has been plundered by %s","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 6 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.6","fallback":"%s dug up your belongings","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 7 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.7","fallback":"A grave robber strikes! %s took your items","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 8 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.8","fallback":"%s paid your grave a visit and left nothing behind","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 9 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.9","fallback":"Your treasures now belong to %s","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"opened"} if score $notify_variant keepinv.grave.timer matches 10 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.opened.10","fallback":"%s cleared out your final resting place","color":"white","bold":false,"italic":false,"with":[{"nbt":"keepinv.notify.name","storage":"eden:temp","color":"yellow","bold":false,"italic":false,"interpret":true}]},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 1 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.1","fallback":"Your grave has crumbled away","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 2 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.2","fallback":"The soil has reclaimed your grave","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 3 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.3","fallback":"Your belongings have faded into dust","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 4 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.4","fallback":"Your grave has vanished without a trace","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 5 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.5","fallback":"Time has claimed your grave","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 6 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.6","fallback":"Your grave sank back into the earth","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 7 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.7","fallback":"The spirits have taken your belongings","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 8 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.8","fallback":"Nothing remains of your grave","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 9 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.9","fallback":"Your grave has been lost to the ages","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expired"} if score $notify_variant keepinv.grave.timer matches 10 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expired.10","fallback":"The wind scattered what was left of your grave","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 1 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.1","fallback":"Your grave will crumble in less than a minute!","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 2 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.2","fallback":"Hurry! Your grave is about to fade away","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 3 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.3","fallback":"The soil stirs... your grave won't last another minute","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 4 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.4","fallback":"Your grave is growing restless, less than a minute left!","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 5 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.5","fallback":"Time is running out, your grave will soon be gone!","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 6 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.6","fallback":"Quick! Your belongings are about to turn to dust","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 7 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.7","fallback":"Your grave is fading, less than a minute remains","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 8 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.8","fallback":"The earth hungers... your grave won't last much longer","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 9 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.9","fallback":"Last call! Your grave disappears in under a minute","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute if data storage eden:temp keepinv.notify{type:"expiring"} if score $notify_variant keepinv.grave.timer matches 10 \
    run tellraw @s [\
        {"text":"▊ ","color":"#89CFF0","bold":false,"italic":false},\
        {"translate":"text.keepinv.grave.notify.expiring.10","fallback":"Your grave flickers, it will be gone within a minute!","color":"white","bold":false,"italic":false},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"X: ","color":"dark_purple","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.x","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Y: ","color":"dark_green","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.y","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" ","color":"white","bold":false,"italic":false},\
        {"text":"Z: ","color":"dark_aqua","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.z","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true},\
        {"text":" | ","color":"dark_gray","bold":false,"italic":false},\
        {"text":"Dimension: ","color":"gold","bold":false,"italic":false},\
        {"nbt":"keepinv.notify.dimension","storage":"eden:temp","color":"white","bold":false,"italic":false,"interpret":true}\
    ]

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2