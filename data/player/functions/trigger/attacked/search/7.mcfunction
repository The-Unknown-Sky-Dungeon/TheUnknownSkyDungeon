##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={7-0=true}}] if entity @s[tag=UUIDFlag7-0] run function player:trigger/attacked/search/8
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={7-1=true}}] if entity @s[tag=UUIDFlag7-1] run function player:trigger/attacked/search/8