##############################
###ロード処理
##############################

##初期化処理の起動
execute unless data storage tusd_: _ run function core:load/once
##1回目以降は起動しないようにする
#デバッグ時は以下の注釈を解除して、毎回Loadされるようにする
data modify storage tusd_: Debug set value true
execute if data storage tusd_: {Debug:1b} run tellraw @a {"text":"注意：現在デバッグ環境となっております","color":"red","bold":true}
execute if data storage tusd_: {Debug:0b} run data modify storage tusd_: _ set value {}

##乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0}
execute store result score $RndMWC Random run data get entity @e[distance=..0.01,type=minecraft:area_effect_cloud,limit=1] UUID[0] 0.01
execute store result score $RndMWCCarry Random run data get entity @e[distance=..0.01,type=minecraft:area_effect_cloud,limit=1] UUID[1] 0.01
scoreboard players set _ _ 65536
scoreboard players operation $RndMWC Random %= _ _
scoreboard players operation $RndMWCCarry Random /= _ _