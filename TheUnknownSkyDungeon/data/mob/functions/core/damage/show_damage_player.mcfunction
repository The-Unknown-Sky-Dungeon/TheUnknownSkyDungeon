##############################
### Playerのダメージ表示
##############################

##ダメージ表示
execute unless entity @s[scores={Damage=0}] anchored eyes positioned ^ ^1.25 ^ run function mob:core/damage/show_damage_pos

##リセット
scoreboard players reset @s Damage