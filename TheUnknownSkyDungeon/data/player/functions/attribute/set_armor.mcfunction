##############################
###防御力上昇パッシブの調整
##############################

##20段階以上にならない様にバグ対策
scoreboard players set _ _1 20
scoreboard players operation @s GlowDEF < _ _1

##リセット
attribute @s generic.armor modifier remove 000-0-0-1-0
attribute @s generic.armor modifier remove 000-0-0-2-0
attribute @s generic.armor modifier remove 000-0-0-3-0
attribute @s generic.armor modifier remove 000-0-0-4-0
attribute @s generic.armor modifier remove 000-0-0-5-0
attribute @s generic.armor modifier remove 000-0-0-6-0
attribute @s generic.armor modifier remove 000-0-0-7-0
attribute @s generic.armor modifier remove 000-0-0-8-0
attribute @s generic.armor modifier remove 000-0-0-9-0
attribute @s generic.armor modifier remove 000-0-0-10-0
attribute @s generic.armor modifier remove 000-0-0-11-0
attribute @s generic.armor modifier remove 000-0-0-12-0
attribute @s generic.armor modifier remove 000-0-0-13-0
attribute @s generic.armor modifier remove 000-0-0-14-0
attribute @s generic.armor modifier remove 000-0-0-15-0
attribute @s generic.armor modifier remove 000-0-0-16-0
attribute @s generic.armor modifier remove 000-0-0-17-0
attribute @s generic.armor modifier remove 000-0-0-18-0
attribute @s generic.armor modifier remove 000-0-0-19-0
attribute @s generic.armor modifier remove 000-0-0-20-0

##付与
execute if score @s GlowDEF matches 1.. run attribute @s generic.armor modifier add 000-0-0-1-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 2.. run attribute @s generic.armor modifier add 000-0-0-2-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 3.. run attribute @s generic.armor modifier add 000-0-0-3-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 4.. run attribute @s generic.armor modifier add 000-0-0-4-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 5.. run attribute @s generic.armor modifier add 000-0-0-5-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 6.. run attribute @s generic.armor modifier add 000-0-0-6-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 7.. run attribute @s generic.armor modifier add 000-0-0-7-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 8.. run attribute @s generic.armor modifier add 000-0-0-8-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 9.. run attribute @s generic.armor modifier add 000-0-0-9-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 10.. run attribute @s generic.armor modifier add 000-0-0-10-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 11.. run attribute @s generic.armor modifier add 000-0-0-11-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 12.. run attribute @s generic.armor modifier add 000-0-0-12-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 13.. run attribute @s generic.armor modifier add 000-0-0-13-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 14.. run attribute @s generic.armor modifier add 000-0-0-14-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 15.. run attribute @s generic.armor modifier add 000-0-0-15-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 16.. run attribute @s generic.armor modifier add 000-0-0-16-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 17.. run attribute @s generic.armor modifier add 000-0-0-17-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 18.. run attribute @s generic.armor modifier add 000-0-0-18-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 19.. run attribute @s generic.armor modifier add 000-0-0-19-0 "tusd:armor" 0.15 multiply
execute if score @s GlowDEF matches 20.. run attribute @s generic.armor modifier add 000-0-0-20-0 "tusd:armor" 0.15 multiply