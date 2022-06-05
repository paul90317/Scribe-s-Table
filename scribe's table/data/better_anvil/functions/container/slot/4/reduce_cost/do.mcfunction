execute store result score @s btav.ret run data get block ~ ~-1 ~ Items[{Slot:5b}].Count
scoreboard players remove @s btav.ret 1
execute if score @s btav.ret matches 0 run data remove block ~ ~-1 ~ Items[{Slot:5b}]
execute if score @s btav.ret matches 1.. store result block ~ ~-1 ~ Items[{Slot:5b}].Count int 1 run scoreboard players get @s btav.ret

execute store result score @s btav.ret run data get block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost
scoreboard players remove @s btav.ret 1
execute store result block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost int 1 run scoreboard players get @s btav.ret

experience add @p -1 levels

playsound block.anvil.use ambient @p ~ ~ ~