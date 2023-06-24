##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={8-0=true}}] if entity @s[tag=UUIDFlag8-0] run function player:trigger/attacked/search/9
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={8-1=true}}] if entity @s[tag=UUIDFlag8-1] run function player:trigger/attacked/search/9