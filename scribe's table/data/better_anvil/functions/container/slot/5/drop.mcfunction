summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:cookie",Count:1b,tag:{btav:0}}}
data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{btav:0}}}] Item set from block ~ ~-1 ~ Items[{Slot:5b}]
item replace block ~ ~-1 ~ container.5 with light_gray_stained_glass_pane{btav:0,display:{Name:'{"text": "Put ingredient here.","italic":false}',Lore:['{"text": "Phantom Membrane for repairing.","italic":false}','{"text": "Book for moving first enchantment.","italic":false}','{"text": "Bookshelf for moving all enchantments.","italic":false}','{"text": "Ender Pearl for reducing Repair Cost.","italic":false}']}} 1
playsound block.dispenser.dispense ambient @a ~ ~ ~