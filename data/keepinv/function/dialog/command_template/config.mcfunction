
$data modify storage eden:settings keepinv merge value {\
    exp_loss:'$(exp_loss)',\
    grave_duration: $(grave_duration),\
    player_head_drop:'$(player_head_drop)',\
    non_droppable_tag_list:'$(non_droppable_tag_list)',\
    grave_status:'$(grave_status)',\
    grave_type:'$(grave_type)'\
}

$data modify storage eden:settings keepinv.exp_loss_amount_initial set value $(exp_loss_amount)
execute store result storage eden:settings keepinv.exp_loss_amount float 0.01 run data get storage eden:settings keepinv.exp_loss_amount_initial

$data modify storage eden:settings keepinv.player_head_drop_chance_initial set value $(player_head_drop_chance)
execute store result storage eden:settings keepinv.player_head_drop_chance float 0.01 run data get storage eden:settings keepinv.player_head_drop_chance_initial

execute store result score $grave_duration keepinv.grave.duration run data get storage eden:settings keepinv.grave_duration 60

execute if data storage eden:settings keepinv{exp_loss:"enabled"} run data modify storage eden:settings keepinv.exp_loss_initial set value "false"
execute unless data storage eden:settings keepinv{exp_loss:"enabled"} run data modify storage eden:settings keepinv.exp_loss_initial set value "true"

execute if data storage eden:settings keepinv{grave_status:"enabled"} run data modify storage eden:settings keepinv.grave_status_initial set value "false"
execute unless data storage eden:settings keepinv{grave_status:"enabled"} run data modify storage eden:settings keepinv.grave_status_initial set value "true"

execute if data storage eden:settings keepinv{player_head_drop:"enabled"} run data modify storage eden:settings keepinv.player_head_drop_initial set value "false"
execute unless data storage eden:settings keepinv{player_head_drop:"enabled"} run data modify storage eden:settings keepinv.player_head_drop_initial set value "true"

execute if data storage eden:settings keepinv{grave_type:"random"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false"\
}

execute if data storage eden:settings keepinv{grave_type:"candle"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"true",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false",\
}

execute if data storage eden:settings keepinv{grave_type:"skull"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"true",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false"\
}

execute if data storage eden:settings keepinv{grave_type:"chest"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"true",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false"\
}

execute if data storage eden:settings keepinv{grave_type:"bundle"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"true",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false"\
}

execute if data storage eden:settings keepinv{grave_type:"tombstone"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"true",\
    grave_type_player_head_initial:"false"\
}

execute if data storage eden:settings keepinv{grave_type:"player_head"} run data modify storage eden:settings keepinv merge value {\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"true"\
}