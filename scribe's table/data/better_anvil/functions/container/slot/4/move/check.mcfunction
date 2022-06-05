scoreboard players set @s btav.sum 0
execute if data block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0].id run scoreboard players add @s btav.sum 1
execute if data block ~ ~-1 ~ Items[{Slot:3b}].tag.StoredEnchantments[1].id run scoreboard players add @s btav.sum 1
execute store result score @s btav.ret run experience query @p levels
execute if score @s btav.ret matches 24.. run scoreboard players add @s btav.sum 1

execute unless score @s btav.sum matches 2 run playsound entity.villager.no ambient @p ~ ~ ~
execute if score @s btav.sum matches 2 run function better_anvil:container/slot/4/move/do