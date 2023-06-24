##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={9-0=true}}] if entity @s[tag=UUIDFlag9-0] run function player:trigger/attacked/search/10
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={9-1=true}}] if entity @s[tag=UUIDFlag9-1] run function player:trigger/attacked/search/10