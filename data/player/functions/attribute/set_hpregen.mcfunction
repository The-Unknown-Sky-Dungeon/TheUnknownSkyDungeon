##############################
###HP回復量パッシブの調整
##############################

##20段階以上にならない様にバグ対策
scoreboard players set _ _1 20
scoreboard players operation @s GlowHPRegen < _ _1