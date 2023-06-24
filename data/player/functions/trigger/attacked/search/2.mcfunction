##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={2-0=true}}] if entity @s[tag=UUIDFlag2-0] run function player:trigger/attacked/search/3
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={2-1=true}}] if entity @s[tag=UUIDFlag2-1] run function player:trigger/attacked/search/3