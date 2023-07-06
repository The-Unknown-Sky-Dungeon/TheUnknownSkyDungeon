##############################
### MOB毎ティック処理
##############################

## NativeTask
execute if entity @s[scores={NativeFlag=1..}] run function mob:core/native_task/

## Mob自然ダメージ反映
execute if entity @s[tag=Enemy,nbt=!{AbsorptionAmount:1000000f}] run function mob:core/damage/absorption

## ダメージ表示の死亡処理
execute if entity @s[scores={Invincible=1..},tag=DamageDisplay] run function mob:core/damage/show_damage_tick

## Danger表示の死亡処理
execute if entity @s[tag=DangerDisplay] unless predicate lib:is_vehicle run tag @s add Garbage

## Mobダメージ反映
execute if entity @s[scores={Damage=-2147483648..2147483647}] run function mob:core/damage/update

## 無敵時間更新
scoreboard players add @s Invincible 1