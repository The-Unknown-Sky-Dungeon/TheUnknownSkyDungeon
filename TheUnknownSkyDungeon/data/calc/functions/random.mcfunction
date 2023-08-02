### キャリー付き乗算乱数

###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players set _ _1 31743
scoreboard players operation $RndMWC Random *= _ _1
scoreboard players operation $RndMWC Random += $RndMWCCarry Random
scoreboard players operation $RndMWCCarry Random = $RndMWC Random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players set _ _1 65536
scoreboard players operation $RndMWC Random %= _ _1
## c = (ax + c) / b
scoreboard players operation $RndMWCCarry Random /= _ _1
## 乱数を返す
scoreboard players get $RndMWC Random