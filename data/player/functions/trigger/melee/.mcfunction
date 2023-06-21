##############################
###攻撃時のダメージ処理
##############################

##ダメージを受けたMOBを検知
execute at @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f}] run function calc:geometory/0-0-0-0-2

#execute if entity @s[advancements={player:hurt_entity={Projectile=true}}] run tell @a a
#execute if entity @s[advancements={player:hurt_entity={Melee1=true}}] run tell @a b
#execute if entity @s[advancements={player:hurt_entity={Melee2=true}}] run tell @a c
execute if entity @s[advancements={player:hurt_entity={BowAttack=true}}] at 0-0-0-0-2 run data modify entity @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0,limit=1] AbsorptionAmount set value 999999f

##ダメージを与える
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function mob:core/damage/

##進捗リセット
advancement revoke @s only player:hurt_entity

##マーカー返却
execute as 0-0-0-0-2 run function calc:geometory/return