##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={10-0=true}}] if entity @s[tag=UUIDFlag10-0] run function player:trigger/attacked/search/11
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={10-1=true}}] if entity @s[tag=UUIDFlag10-1] run function player:trigger/attacked/search/11