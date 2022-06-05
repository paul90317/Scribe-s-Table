summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:cookie",Count:1b,tag:{btav:0}}}
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{btav:0}}}] Item set from block ~ ~-1 ~ Items[{Slot:4b}]
item replace block ~ ~-1 ~ container.4 with minecraft:writable_book{btav:0,Enchantments:[{id:"mending",lvl:1}],HideFlags:1} 1

function better_anvil:container/slot/4/check