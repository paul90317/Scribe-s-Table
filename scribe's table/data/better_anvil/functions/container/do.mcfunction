execute unless data block ~ ~-1 ~ Items[{Slot:0b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/0/drop
execute unless data block ~ ~-1 ~ Items[{Slot:1b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/1/drop
execute unless data block ~ ~-1 ~ Items[{Slot:2b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/2/drop
execute unless data block ~ ~-1 ~ Items[{Slot:6b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/6/drop
execute unless data block ~ ~-1 ~ Items[{Slot:7b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/7/drop
execute unless data block ~ ~-1 ~ Items[{Slot:8b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/8/drop

execute unless data block ~ ~-1 ~ Items[{Slot:4b,tag:{btav:0},Count:1b}] run function better_anvil:container/slot/4/drop

scoreboard players set @s btav.sum 0
scoreboard players set @s btav.one 0
execute if data block ~ ~-1 ~ Items[{Slot:5b,id:"minecraft:phantom_membrane"}] run function better_anvil:container/ingredient/phantom_membrane
execute if data block ~ ~-1 ~ Items[{Slot:5b,id:"minecraft:book"}] run function better_anvil:container/ingredient/book
execute if data block ~ ~-1 ~ Items[{Slot:5b,id:"minecraft:bookshelf"}] run function better_anvil:container/ingredient/bookshelf
execute if data block ~ ~-1 ~ Items[{Slot:5b,id:"minecraft:ender_pearl"}] run function better_anvil:container/ingredient/ender_pearl
execute if score @s btav.sum matches 0 run function better_anvil:container/ingredient/other
execute if data block ~ ~-1 ~ Items[{Slot:5b,tag:{btav:0},Count:1b}] run scoreboard players add @s btav.sum 1
execute if data block ~ ~-1 ~ Items[{Slot:5b,id:"minecraft:enchanted_book"}] run scoreboard players add @s btav.sum 1
execute if score @s btav.sum matches 0 run function better_anvil:container/slot/5/drop
execute if score @s btav.one matches 1.. run function better_anvil:container/slot/5/drop_rem_one