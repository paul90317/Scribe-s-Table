data modify block ~ ~-1 ~ Items[{Slot:5b}].id set value "minecraft:enchanted_book"
data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.StoredEnchantments set value []
data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.StoredEnchantments append from block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0]
data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.StoredEnchantments append from block ~ ~-1 ~ Items[{Slot:3b}].tag.StoredEnchantments[0]
data remove block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0]
data remove block ~ ~-1 ~ Items[{Slot:3b}].tag.StoredEnchantments[0]
execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments[0].id run data remove block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost

experience add @p -3 levels

playsound entity.villager.work_librarian ambient @p ~ ~ ~