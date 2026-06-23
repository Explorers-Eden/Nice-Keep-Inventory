##remove temp storage
data remove storage eden:temp keepinv

##apply default values on first load
execute unless data storage eden:settings keepinv run function keepinv:default_values
execute unless data storage eden:datapack nice_keep_inventory{version:3.4} run data modify storage eden:settings keepinv merge value {\
    keepinv_type:"taglist",\
    keepinv_type_taglist_initial:"true",\
    keepinv_type_none_initial:"false",\
    keepinv_type_hotbar_initial:"false",\
    command_template:"function keepinv:dialog/command_template/config {keepinv_type:$(keepinv_type),equip_dmg:$(equip_dmg),equip_dmg_amount:$(equip_dmg_amount),exp_loss_amount:$(exp_loss_amount),exp_loss:\'$(exp_loss)\',player_head_drop_chance:$(player_head_drop_chance),player_head_drop:\'$(player_head_drop)\',non_droppable_tag_list:\'$(non_droppable_tag_list)\',grave_status:\'$(grave_status)\',grave_duration:\'$(grave_duration)\',grave_type:\'$(grave_type)\'}"\
}

##add scoreboards
scoreboard objectives add keepinv.grave.timer dummy
scoreboard objectives add keepinv.grave.duration dummy

##set gamerules
gamerule keep_inventory true

##set grave duration in case it got deleted
execute store result score $grave_duration keepinv.grave.duration run data get storage eden:settings keepinv.grave_duration 60

##set data pack version
data modify storage eden:datapack nice_keep_inventory.version set value "3.4"