##############################
###装備をストレージに保存する
##############################
#以下の順番でストレージに保存される
#[Mainhand,Offhand,Feet,Legs,Chest,Head]
#
data modify storage tusd_api: Equipments set value [{},{},{},{},{},{}]
data modify storage tusd_api: Equipments[0] set from entity @s SelectedItem
data modify storage tusd_api: Equipments[1] set from entity @s Inventory[{Slot:-106b}]
data modify storage tusd_api: Equipments[2] set from entity @s Inventory[{Slot:100b}]
data modify storage tusd_api: Equipments[3] set from entity @s Inventory[{Slot:101b}]
data modify storage tusd_api: Equipments[4] set from entity @s Inventory[{Slot:102b}]
data modify storage tusd_api: Equipments[5] set from entity @s Inventory[{Slot:103b}]