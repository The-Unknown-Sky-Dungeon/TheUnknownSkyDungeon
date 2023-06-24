##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={4-0=true}}] if entity @s[tag=UUIDFlag4-0] run function player:trigger/attacked/search/5
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={4-1=true}}] if entity @s[tag=UUIDFlag4-1] run function player:trigger/attacked/search/5