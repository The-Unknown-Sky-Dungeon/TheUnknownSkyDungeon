##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={5-0=true}}] if entity @s[tag=UUIDFlag5-0] run function player:trigger/attacked/search/6
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={5-1=true}}] if entity @s[tag=UUIDFlag5-1] run function player:trigger/attacked/search/6