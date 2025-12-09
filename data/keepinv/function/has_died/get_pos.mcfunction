$data modify storage eden:temp keepinv.pos_x set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.x
$data modify storage eden:temp keepinv.pos_y set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.y
$data modify storage eden:temp keepinv.pos_z set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.z
$data modify storage eden:temp keepinv.dimension set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.dimension

function keepinv:has_died/grave with storage eden:temp keepinv