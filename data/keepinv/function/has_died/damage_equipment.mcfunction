$execute if items entity @s armor.head * run item modify entity @s armor.head {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.chest * run item modify entity @s armor.chest {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.legs * run item modify entity @s armor.legs {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s armor.feet * run item modify entity @s armor.feet {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}

$execute if items entity @s weapon.mainhand * run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}
$execute if items entity @s weapon.offhand * run item modify entity @s weapon.offhand {"function":"minecraft:set_damage","damage":-$(equip_dmg_amount),"add":true}