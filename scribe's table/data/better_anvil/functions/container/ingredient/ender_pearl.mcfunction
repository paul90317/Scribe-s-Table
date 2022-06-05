scoreboard players add @s btav.sum 1
data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Name set value '{"text":"Reduce Repair Cost","italic":false}'

execute store result score @s btav.ret run experience query @p levels
execute if score @s btav.ret matches ..14 run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"require 15 level","color":"red","italic":false}']
execute if score @s btav.ret matches 15.. run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"cost 1 level","color":"yellow","italic":false}']

scoreboard players set @s btav.ret 0
execute store result score @s btav.ret run data get block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost
execute if score @s btav.ret matches ..0 run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"No Repair Cost to reduce","color":"red","italic":false}']