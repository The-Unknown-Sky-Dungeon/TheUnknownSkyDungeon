##############################
###攻撃力上昇パッシブの調整
##############################

##20段階以上にならない様にバグ対策
scoreboard players set _ _1 20
scoreboard players operation @s GlowATK < _ _1

##リセット
attribute @s generic.attack_damage modifier remove 000-0-0-51-0
attribute @s generic.attack_damage modifier remove 000-0-0-52-0
attribute @s generic.attack_damage modifier remove 000-0-0-53-0
attribute @s generic.attack_damage modifier remove 000-0-0-54-0
attribute @s generic.attack_damage modifier remove 000-0-0-55-0
attribute @s generic.attack_damage modifier remove 000-0-0-56-0
attribute @s generic.attack_damage modifier remove 000-0-0-57-0
attribute @s generic.attack_damage modifier remove 000-0-0-58-0
attribute @s generic.attack_damage modifier remove 000-0-0-59-0
attribute @s generic.attack_damage modifier remove 000-0-0-60-0
attribute @s generic.attack_damage modifier remove 000-0-0-61-0
attribute @s generic.attack_damage modifier remove 000-0-0-62-0
attribute @s generic.attack_damage modifier remove 000-0-0-63-0
attribute @s generic.attack_damage modifier remove 000-0-0-64-0
attribute @s generic.attack_damage modifier remove 000-0-0-65-0
attribute @s generic.attack_damage modifier remove 000-0-0-66-0
attribute @s generic.attack_damage modifier remove 000-0-0-67-0
attribute @s generic.attack_damage modifier remove 000-0-0-68-0
attribute @s generic.attack_damage modifier remove 000-0-0-69-0
attribute @s generic.attack_damage modifier remove 000-0-0-70-0

##付与
execute if score @s GlowATK matches 1.. run attribute @s generic.attack_damage modifier add 000-0-0-51-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 2.. run attribute @s generic.attack_damage modifier add 000-0-0-52-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 3.. run attribute @s generic.attack_damage modifier add 000-0-0-53-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 4.. run attribute @s generic.attack_damage modifier add 000-0-0-54-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 5.. run attribute @s generic.attack_damage modifier add 000-0-0-55-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 6.. run attribute @s generic.attack_damage modifier add 000-0-0-56-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 7.. run attribute @s generic.attack_damage modifier add 000-0-0-57-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 8.. run attribute @s generic.attack_damage modifier add 000-0-0-58-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 9.. run attribute @s generic.attack_damage modifier add 000-0-0-59-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 10.. run attribute @s generic.attack_damage modifier add 000-0-0-60-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 11.. run attribute @s generic.attack_damage modifier add 000-0-0-61-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 12.. run attribute @s generic.attack_damage modifier add 000-0-0-62-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 13.. run attribute @s generic.attack_damage modifier add 000-0-0-63-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 14.. run attribute @s generic.attack_damage modifier add 000-0-0-64-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 15.. run attribute @s generic.attack_damage modifier add 000-0-0-65-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 16.. run attribute @s generic.attack_damage modifier add 000-0-0-66-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 17.. run attribute @s generic.attack_damage modifier add 000-0-0-67-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 18.. run attribute @s generic.attack_damage modifier add 000-0-0-68-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 19.. run attribute @s generic.attack_damage modifier add 000-0-0-69-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 20.. run attribute @s generic.attack_damage modifier add 000-0-0-70-0 "tusd:attack" 0.15 multiply