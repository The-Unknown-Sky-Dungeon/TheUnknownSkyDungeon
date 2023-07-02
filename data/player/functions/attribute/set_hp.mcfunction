##############################
###HP上昇パッシブの調整
##############################

##40段階以上にならない様にバグ対策
scoreboard players set _ _1 40
scoreboard players operation @s GlowHP < _ _1

##リセット
attribute @s generic.max_health modifier remove 0-0-0-101-0
attribute @s generic.max_health modifier remove 0-0-0-102-0

##1桁目調整
scoreboard players operation _ HPMax = @s GlowHP
scoreboard players set _ _2 10
scoreboard players operation _ _1 = _ HPMax
scoreboard players operation _ _1 %= _ _2

execute if score _ _1 matches 1 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 2 add
execute if score _ _1 matches 2 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 4 add
execute if score _ _1 matches 3 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 6 add
execute if score _ _1 matches 4 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 8 add
execute if score _ _1 matches 5 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 10 add
execute if score _ _1 matches 6 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 12 add
execute if score _ _1 matches 7 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 14 add
execute if score _ _1 matches 8 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 16 add
execute if score _ _1 matches 9 run attribute @s generic.max_health modifier add 000-0-0-101-0 "tusd:max_health" 18 add

##2桁目調整
scoreboard players operation _ HPMax /= _ _2

execute if score _ HPMax matches 1 run attribute @s generic.max_health modifier add 00-0-0-102-0 "tusd:max_health" 20 add
execute if score _ HPMax matches 2 run attribute @s generic.max_health modifier add 00-0-0-102-0 "tusd:max_health" 40 add
execute if score _ HPMax matches 3 run attribute @s generic.max_health modifier add 00-0-0-102-0 "tusd:max_health" 60 add
execute if score _ HPMax matches 4 run attribute @s generic.max_health modifier add 00-0-0-102-0 "tusd:max_health" 80 add