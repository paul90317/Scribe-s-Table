execute as @e[type=area_effect_cloud,tag=btav] at @s run function better_anvil:cloud/2dropper
execute as @e[type=glow_item_frame,tag=btav] at @s run function better_anvil:item_frame/loop
clear @a #better_anvil:ui_component{btav:0}
kill @e[type=item,nbt={Item:{tag:{btav:0}}}]