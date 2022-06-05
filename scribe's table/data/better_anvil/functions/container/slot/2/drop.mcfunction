summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:cookie",Count:1b,tag:{btav:0}}}
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{btav:0}}}] Item set from block ~ ~-1 ~ Items[{Slot:2b}]
item replace block ~ ~-1 ~ container.2 with black_stained_glass_pane{btav:0,display:{Name:'{"text": ""}'}} 1
playsound block.dispenser.dispense ambient @a ~ ~ ~