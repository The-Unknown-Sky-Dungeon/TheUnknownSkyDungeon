##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={11-0=true}}] if entity @s[tag=UUIDFlag11-0] run function player:trigger/attacked/search/12
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={11-1=true}}] if entity @s[tag=UUIDFlag11-1] run function player:trigger/attacked/search/12