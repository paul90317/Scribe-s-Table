scoreboard players set @s btav.sum 0

scoreboard players set @s btav.ret 0
execute store result score @s btav.ret run data get block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost
execute if score @s btav.ret matches 1.. run scoreboard players add @s btav.sum 1

scoreboard players set @s btav.ret 0
execute store result score @s btav.ret run experience query @p levels
execute if score @s btav.ret matches 15.. run scoreboard players add @s btav.sum 1

execute unless score @s btav.sum matches 2 run playsound entity.villager.no ambient @p ~ ~ ~
execute if score @s btav.sum matches 2 run function better_anvil:container/slot/4/reduce_cost/do
