##remove temp storage
data remove storage eden:temp keepinv

##apply default values on first load
execute unless data storage eden:settings keepinv run function keepinv:default_values
execute unless data storage eden:datapack nice_keep_inventory{version:2.9} run data modify storage eden:settings keepinv merge value {\
    equip_dmg:"enabled",\
    equip_dmg_initial:"false",\
    equip_dmg_amount:0.1,\
    equip_dmg_amount_initial:10,\
    command_template:"function keepinv:dialog/command_template/config {equip_dmg:$(equip_dmg),equip_dmg_amount:$(equip_dmg_amount),exp_loss_amount:$(exp_loss_amount),exp_loss:\'$(exp_loss)\',player_head_drop_chance:$(player_head_drop_chance),player_head_drop:\'$(player_head_drop)\',non_droppable_tag_list:\'$(non_droppable_tag_list)\',grave_status:\'$(grave_status)\',grave_duration:\'$(grave_duration)\',grave_type:\'$(grave_type)\'}"\
}

##add scoreboards
scoreboard objectives add keepinv.grave.timer dummy
scoreboard objectives add keepinv.grave.duration dummy

##set gamerules
gamerule keep_inventory true

##set grave duration in case it got deleted
execute store result score $grave_duration keepinv.grave.duration run data get storage eden:settings keepinv.grave_duration 60

##set data pack version
data modify storage eden:datapack nice_keep_inventory.version set value "2.9"