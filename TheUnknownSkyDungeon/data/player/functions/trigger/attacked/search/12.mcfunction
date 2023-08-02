##############################
###MOBの気合検索フィルター
##############################
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={12-0=true}}] if entity @s[tag=UUIDFlag12-0] run tag @s add AttackingEntity
execute if entity @a[tag=NowTarget,advancements={player:hurt_player={12-1=true}}] if entity @s[tag=UUIDFlag12-1] run tag @s add AttackingEntity