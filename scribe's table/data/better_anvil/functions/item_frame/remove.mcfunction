kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest,distance=..1]
execute positioned ~ ~-1 ~ run function better_anvil:craft/summon
kill @s