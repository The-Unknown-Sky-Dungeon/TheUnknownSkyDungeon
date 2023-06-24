##############################
###攻撃力上昇パッシブの調整
##############################

##20段階以上にならない様にバグ対策
scoreboard players set _ _1 20
scoreboard players operation @s GlowATK < _ _1

##リセット
attribute @s generic.attack_damage modifier remove 000-0-0-21-0
attribute @s generic.attack_damage modifier remove 000-0-0-22-0
attribute @s generic.attack_damage modifier remove 000-0-0-23-0
attribute @s generic.attack_damage modifier remove 000-0-0-24-0
attribute @s generic.attack_damage modifier remove 000-0-0-25-0
attribute @s generic.attack_damage modifier remove 000-0-0-26-0
attribute @s generic.attack_damage modifier remove 000-0-0-27-0
attribute @s generic.attack_damage modifier remove 000-0-0-28-0
attribute @s generic.attack_damage modifier remove 000-0-0-29-0
attribute @s generic.attack_damage modifier remove 000-0-0-30-0
attribute @s generic.attack_damage modifier remove 000-0-0-31-0
attribute @s generic.attack_damage modifier remove 000-0-0-32-0
attribute @s generic.attack_damage modifier remove 000-0-0-33-0
attribute @s generic.attack_damage modifier remove 000-0-0-34-0
attribute @s generic.attack_damage modifier remove 000-0-0-35-0
attribute @s generic.attack_damage modifier remove 000-0-0-36-0
attribute @s generic.attack_damage modifier remove 000-0-0-37-0
attribute @s generic.attack_damage modifier remove 000-0-0-38-0
attribute @s generic.attack_damage modifier remove 000-0-0-39-0
attribute @s generic.attack_damage modifier remove 000-0-0-40-0

##付与
execute if score @s GlowATK matches 1.. run attribute @s generic.attack_damage modifier add 000-0-0-21-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 2.. run attribute @s generic.attack_damage modifier add 000-0-0-22-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 3.. run attribute @s generic.attack_damage modifier add 000-0-0-23-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 4.. run attribute @s generic.attack_damage modifier add 000-0-0-24-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 5.. run attribute @s generic.attack_damage modifier add 000-0-0-25-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 6.. run attribute @s generic.attack_damage modifier add 000-0-0-26-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 7.. run attribute @s generic.attack_damage modifier add 000-0-0-27-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 8.. run attribute @s generic.attack_damage modifier add 000-0-0-28-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 9.. run attribute @s generic.attack_damage modifier add 000-0-0-29-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 10.. run attribute @s generic.attack_damage modifier add 000-0-0-30-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 11.. run attribute @s generic.attack_damage modifier add 000-0-0-31-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 12.. run attribute @s generic.attack_damage modifier add 000-0-0-32-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 13.. run attribute @s generic.attack_damage modifier add 000-0-0-33-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 14.. run attribute @s generic.attack_damage modifier add 000-0-0-34-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 15.. run attribute @s generic.attack_damage modifier add 000-0-0-35-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 16.. run attribute @s generic.attack_damage modifier add 000-0-0-36-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 17.. run attribute @s generic.attack_damage modifier add 000-0-0-37-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 18.. run attribute @s generic.attack_damage modifier add 000-0-0-38-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 19.. run attribute @s generic.attack_damage modifier add 000-0-0-39-0 "tusd:attack" 0.15 multiply
execute if score @s GlowATK matches 20.. run attribute @s generic.attack_damage modifier add 000-0-0-40-0 "tusd:attack" 0.15 multiply