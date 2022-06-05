summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:cookie",Count:1b,tag:{btav:0}}}
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{btav:0}}}] run function better_anvil:container/slot/5/item_sub_one
data modify block ~ ~-1 ~ Items[{Slot:5b}].Count set value 1b
playsound block.dispenser.dispense ambient @a ~ ~ ~