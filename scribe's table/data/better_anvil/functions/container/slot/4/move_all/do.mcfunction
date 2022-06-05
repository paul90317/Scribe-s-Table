data modify block ~ ~-1 ~ Items[{Slot:5b}].id set value "minecraft:enchanted_book"
data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.StoredEnchantments set from block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments
data remove block ~ ~-1 ~ Items[{Slot:3b}].tag.Enchantments
data remove block ~ ~-1 ~ Items[{Slot:3b}].tag.RepairCost
execute if data block ~ ~-1 ~ Items[{Slot:3b,id:"minecraft:enchanted_book"}] run data modify block ~ ~-1 ~ Items[{Slot:3b}].id set value "minecraft:book"

experience add @p -15 levels

playsound entity.villager.work_librarian ambient @p ~ ~ ~