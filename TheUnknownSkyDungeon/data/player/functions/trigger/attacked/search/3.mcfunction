##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={3-0=true}}] if entity @s[tag=UUIDFlag3-0] run function player:trigger/attacked/search/4
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={3-1=true}}] if entity @s[tag=UUIDFlag3-1] run function player:trigger/attacked/search/4