##############################
###ダメージ軽減率の敵用
##############################

##(ResistRate)% だけダメージを軽減する
scoreboard players set _ ResistRate 100
scoreboard players operation _ ResistRate -= @s ResistRate
scoreboard players operation _ _1 *= _ ResistRate
scoreboard players set _ ResistRate 100
scoreboard players operation _ _1 /= _ ResistRate