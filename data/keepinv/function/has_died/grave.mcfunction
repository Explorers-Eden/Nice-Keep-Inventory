loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp keepinv.name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile.name
data modify storage eden:temp keepinv.profile set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1] Item.components.minecraft:profile
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1]

data modify storage eden:temp keepinv.UUID set from entity @s UUID

execute store result storage eden:temp keepinv.rotation float 1.0 run random value -180..90
execute store result storage eden:temp keepinv.direction int 1 run random value 1..4

execute if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:deathlock"}]] run data modify storage eden:temp keepinv.deathlock set value "true"
execute unless items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:deathlock"}]] run data modify storage eden:temp keepinv.deathlock set value "false"

execute if items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:gravehold"}]] store result storage eden:temp keepinv.duration int 2 run scoreboard players get $grave_duration keepinv.grave.duration
execute unless items entity @s armor.chest #minecraft:chest_armor[minecraft:enchantments~[{enchantments: "keepinv:gravehold"}]] store result storage eden:temp keepinv.duration int 1 run scoreboard players get $grave_duration keepinv.grave.duration

execute if data storage eden:settings keepinv{grave_type:"random"} store result storage eden:temp keepinv.rng_value int 1 run random value 1..6
execute if data storage eden:settings keepinv{grave_type:"random"} if data storage eden:temp keepinv{rng_value:1} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhjYTM2MTBiZjFlZDJkY2NlNWNhN2Y3ZjI5MTRhMWMyNWZiZmFiZDc0ZGNlNTFiM2Y1MTI2YmE0NGJhMWEyMCJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"random"} if data storage eden:temp keepinv{rng_value:2} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFmYzk0MzZiOTlkMjlmMTMzYjE1YzUzYmVmMTQ4MDcyZGM5ZDEyMDdhMTdmYjllYjliZjA2YTA2MWIwYjdkIn19fQ=="}]}
execute if data storage eden:settings keepinv{grave_type:"random"} if data storage eden:temp keepinv{rng_value:3} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWFkNjNkZjhiODg4YzNlZGMyYjc1OTQ4MDkyODQ4ZjA3NDc0NDQ5OTQ1NTU1NDllZTUyOGNmOWQ4M2FmZGZlYSJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"random"} if data storage eden:temp keepinv{rng_value:4} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2MxYjJmNTkyY2ZjOGQzNzJkY2Y1ZmQ0NGVlZDY5ZGRkYzY0NjAxZDc4NDZkNzI2MTlmNzA1MTFkODA0M2E4OSJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"random"} if data storage eden:temp keepinv{rng_value:5} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YzYmU2NDAxNjczNmJlNDRiMWQ1YTVmM2FkYWI2ZDRjMDQzNzgyYzE3ZGQyOWMzYjhjNGNiNmU3M2Y5ODk4In19fQ=="}]}

execute if data storage eden:settings keepinv{grave_type:"candle"} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhjYTM2MTBiZjFlZDJkY2NlNWNhN2Y3ZjI5MTRhMWMyNWZiZmFiZDc0ZGNlNTFiM2Y1MTI2YmE0NGJhMWEyMCJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"skull"} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFmYzk0MzZiOTlkMjlmMTMzYjE1YzUzYmVmMTQ4MDcyZGM5ZDEyMDdhMTdmYjllYjliZjA2YTA2MWIwYjdkIn19fQ=="}]}
execute if data storage eden:settings keepinv{grave_type:"bundle"} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWFkNjNkZjhiODg4YzNlZGMyYjc1OTQ4MDkyODQ4ZjA3NDc0NDQ5OTQ1NTU1NDllZTUyOGNmOWQ4M2FmZGZlYSJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"chest"} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2MxYjJmNTkyY2ZjOGQzNzJkY2Y1ZmQ0NGVlZDY5ZGRkYzY0NjAxZDc4NDZkNzI2MTlmNzA1MTFkODA0M2E4OSJ9fX0="}]}
execute if data storage eden:settings keepinv{grave_type:"tombstone"} run data modify storage eden:temp keepinv.profile set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YzYmU2NDAxNjczNmJlNDRiMWQ1YTVmM2FkYWI2ZDRjMDQzNzgyYzE3ZGQyOWMzYjhjNGNiNmU3M2Y5ODk4In19fQ=="}]}

function keepinv:grave/place with storage eden:temp keepinv