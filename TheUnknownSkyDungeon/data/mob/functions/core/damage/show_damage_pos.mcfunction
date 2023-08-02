##############################
### ダメージ表示の位置調整
##############################

## X = -0.5..0.5 Y=0..0.5 Z= -0.5..0.5 の範囲で位置にブレを生じさせる
function calc:geometory/0-0-0-0-0
execute store result score _ Random run function calc:random
scoreboard players set _ _2 100
scoreboard players operation _ Random %= _ _2
scoreboard players remove _ Random 50
execute store result score _ _1 run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity 0-0-0-0-0 Pos[0] double 0.01 run scoreboard players operation _ _1 += _ Random
execute store result score _ Random run function calc:random
scoreboard players operation _ Random %= _ _2
scoreboard players remove _ Random 50
execute store result score _ _1 run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity 0-0-0-0-0 Pos[2] double 0.01 run scoreboard players operation _ _1 += _ Random
execute store result score _ Random run function calc:random
scoreboard players set _ _2 50
scoreboard players operation _ Random %= _ _2
execute store result score _ _1 run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity 0-0-0-0-0 Pos[1] double 0.01 run scoreboard players operation _ _1 += _ Random

##0-0-0-0-0の場所でダメージ表示
execute at 0-0-0-0-0 run function mob:core/damage/show_damage

##リセット
execute as 0-0-0-0-0 run function calc:geometory/return