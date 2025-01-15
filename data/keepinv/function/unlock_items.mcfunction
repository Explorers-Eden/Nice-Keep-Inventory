execute as @e[type=item] store result score @s keepinv.item_age run data get entity @s Age
execute as @e[type=item,scores={keepinv.item_age=3600..}] run data remove entity @s Owner

schedule function keepinv:unlock_items 1s