##############################
###MP上昇パッシブの調整
##############################

##40段階以上にならない様にバグ対策
scoreboard players set _ _1 40
scoreboard players operation @s GlowMP < _ _1

##最大MPを調整
scoreboard players operation _ MPMax = @s GlowMP
scoreboard players set _ _1 10
scoreboard players operation _ MPMax *= _ _1
scoreboard players operation @s MPMax = _ MPMax