$execute if items entity @s armor.head *[minecraft:max_damage] run item modify entity @s armor.head {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.chest *[minecraft:max_damage] run item modify entity @s armor.chest {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.legs *[minecraft:max_damage] run item modify entity @s armor.legs {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.feet *[minecraft:max_damage] run item modify entity @s armor.feet {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}

$execute if items entity @s weapon.mainhand *[minecraft:max_damage] run item modify entity @s weapon.mainhand {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s weapon.offhand *[minecraft:max_damage] run item modify entity @s weapon.offhand {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}