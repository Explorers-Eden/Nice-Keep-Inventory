$execute if items entity @s armor.head * run item modify entity @s armor.head {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.chest * run item modify entity @s armor.chest {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.legs * run item modify entity @s armor.legs {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.feet * run item modify entity @s armor.feet {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}

$execute if items entity @s weapon.mainhand * run item modify entity @s weapon.mainhand {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s weapon.offhand * run item modify entity @s weapon.offhand {"type":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}