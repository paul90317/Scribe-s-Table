scoreboard players add @s btav.sum 1
data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Name set value '{"text":"Move all enchantments","italic":false}'

execute unless data block ~ ~-1 ~ Items[{Slot:5b,Count:1b}] run scoreboard players add @s btav.one 1

execute store result score @s btav.ret run experience query @p levels
execute if score @s btav.ret matches ..29 run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"Require 30 level","color":"red","italic":false}']
execute if score @s btav.ret matches 30.. run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"Cost 15 levels","color":"yellow","italic":false}']

execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0] run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"No Enchantment to move","color":"red","italic":false}']