##entities load a few ticks after the chunk; give the grave 10 seconds to show up
execute store result score $fl_at keepinv.grave.timer run data get storage eden:temp keepinv.entry.fl_at
scoreboard players operation $fl_age keepinv.grave.timer = $now keepinv.grave.timer
scoreboard players operation $fl_age keepinv.grave.timer -= $fl_at keepinv.grave.timer
execute if score $fl_age keepinv.grave.timer matches ..9 run return fail

execute if data storage eden:temp keepinv.entry{fl_owned:1b} run function keepinv:grave/tracker/forceload/remove with storage eden:temp keepinv.entry
function keepinv:grave/tracker/forceload/give_up with storage eden:temp keepinv.entry
