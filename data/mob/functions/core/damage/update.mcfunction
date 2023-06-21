##############################
### MOBのダメージ反映
##############################

##ダメージ反映
scoreboard players add @s[scores={Damage=0}] Damage 1
scoreboard players operation @s HP -= @s Damage
scoreboard players operation @s HP < @s HPMax


##ダメージ演出
effect give @s[scores={Damage=0..}] instant_damage 1 127 true
effect give @s[scores={Damage=0..}] instant_health 1 127 true

##ダメージ表示
execute anchored eyes positioned ^ ^ ^ run function mob:core/damage/show_damage_pos

##死亡処理
tag @s[scores={HP=..0}] add Garbage

##リセット
scoreboard players reset @s Damage