data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:5b}]
execute store result score @s btav.ret run data get entity @s Item.Count
scoreboard players remove @s btav.ret 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s btav.ret