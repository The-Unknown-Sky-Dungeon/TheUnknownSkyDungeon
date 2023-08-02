##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={6-0=true}}] if entity @s[tag=UUIDFlag6-0] run function player:trigger/attacked/search/7
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={6-1=true}}] if entity @s[tag=UUIDFlag6-1] run function player:trigger/attacked/search/7