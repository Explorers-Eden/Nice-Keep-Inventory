scoreboard players set $grave_duration keepinv.grave.duration 300

data modify storage eden:settings keepinv merge value {\
    grave_status:"enabled",\
    grave_status_initial:"false",\
    grave_duration:5,\
    grave_type:random,\
    grave_type_candle_initial:"false",\
    grave_type_skull_initial:"false",\
    grave_type_chest_initial:"false",\
    grave_type_bundle_initial:"false",\
    grave_type_tombstone_initial:"false",\
    grave_type_player_head_initial:"false",\
    non_droppable_tag_list:"keepinv:non_droppable_items",\
    player_head_drop:"enabled",\
    player_head_drop_initial:"false",\
    player_head_drop_chance:0.2,\
    player_head_drop_chance_initial:20,\
    exp_loss:"enabled",\
    exp_loss_initial:"false",\
    exp_loss_amount:0.3,\
    exp_loss_amount_initial:30,\
    command_template:"function keepinv:dialog/command_template/config {exp_loss_amount:$(exp_loss_amount),exp_loss:\'$(exp_loss)\',player_head_drop_chance:$(player_head_drop_chance),player_head_drop:\'$(player_head_drop)\',non_droppable_tag_list:\'$(non_droppable_tag_list)\',grave_status:\'$(grave_status)\',grave_duration:\'$(grave_duration)\',grave_type:\'$(grave_type)\'}"\
}