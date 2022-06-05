scoreboard players add @s btav.sum 1
data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display set value {Name:'{"text":"Move first enchantment","italic":false}'}

execute unless data block ~ ~-1 ~ Items[{Slot:5b,Count:1b}] run scoreboard players add @s btav.one 1

execute store result score @s btav.ret run experience query @p levels
execute if score @s btav.ret matches ..23 run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"Require 24 level","color":"red","italic":false}']
execute if score @s btav.ret matches 24.. run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"Cost 3 levels","color":"yellow","italic":false}']

execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0] unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.StoredEnchantments[1] run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.display.Lore set value ['{"text":"No Enchantment to move","color":"red","italic":false}']