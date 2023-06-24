##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={1-0=true}}] if entity @s[tag=UUIDFlag1-0] run function player:trigger/attacked/search/2
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={1-1=true}}] if entity @s[tag=UUIDFlag1-1] run function player:trigger/attacked/search/2