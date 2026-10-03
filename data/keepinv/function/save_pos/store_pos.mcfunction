$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.x int 1 run data get storage eden:temp safe_pos.pos[0]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.y int 1 run data get storage eden:temp safe_pos.pos[1]
$execute store result storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.z int 1 run data get storage eden:temp safe_pos.pos[2]
$data modify storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).last_safe_pos.dimension set from storage eden:temp safe_pos.dimension
