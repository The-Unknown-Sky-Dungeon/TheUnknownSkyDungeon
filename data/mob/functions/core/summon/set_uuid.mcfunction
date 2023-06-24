##############################
###MOB UUIDを設定する
##############################

## グローバルMobUUIDを増加させる (4096でループ)
scoreboard players add # MobUUID 1
scoreboard players set # _1 4096
scoreboard players operation # MobUUID %= # _1
execute if score # MobUUID matches 0 run scoreboard players add # MobUUID 1
##UUIDとして保存する
scoreboard players operation @s MobUUID = # MobUUID
scoreboard players operation # _1 = # MobUUID
##気合でフラグ立て
execute if score # _1 matches 2048.. run tag @s add UUIDFlag1-0
execute if score # _1 matches 2048.. run scoreboard players remove # _1 2048
execute unless score # _1 matches 2048.. run tag @s add UUIDFlag1-1
execute if score # _1 matches 1024.. run tag @s add UUIDFlag2-0
execute if score # _1 matches 1024.. run scoreboard players remove # _1 1024
execute unless score # _1 matches 1024.. run tag @s add UUIDFlag2-1
execute if score # _1 matches 512.. run tag @s add UUIDFlag3-0
execute if score # _1 matches 512.. run scoreboard players remove # _1 512
execute unless score # _1 matches 512.. run tag @s add UUIDFlag3-1
execute if score # _1 matches 256.. run tag @s add UUIDFlag4-0
execute if score # _1 matches 256.. run scoreboard players remove # _1 256
execute unless score # _1 matches 256.. run tag @s add UUIDFlag4-1
execute if score # _1 matches 128.. run tag @s add UUIDFlag5-0
execute if score # _1 matches 128.. run scoreboard players remove # _1 128
execute unless score # _1 matches 128.. run tag @s add UUIDFlag5-1
execute if score # _1 matches 64.. run tag @s add UUIDFlag6-0
execute if score # _1 matches 64.. run scoreboard players remove # _1 64
execute unless score # _1 matches 64.. run tag @s add UUIDFlag6-1
execute if score # _1 matches 32.. run tag @s add UUIDFlag7-0
execute if score # _1 matches 32.. run scoreboard players remove # _1 32
execute unless score # _1 matches 32.. run tag @s add UUIDFlag7-1
execute if score # _1 matches 16.. run tag @s add UUIDFlag8-0
execute if score # _1 matches 16.. run scoreboard players remove # _1 16
execute unless score # _1 matches 16.. run tag @s add UUIDFlag8-1
execute if score # _1 matches 8.. run tag @s add UUIDFlag9-0
execute if score # _1 matches 8.. run scoreboard players remove # _1 8
execute unless score # _1 matches 8.. run tag @s add UUIDFlag9-1
execute if score # _1 matches 4.. run tag @s add UUIDFlag10-0
execute if score # _1 matches 4.. run scoreboard players remove # _1 4
execute unless score # _1 matches 4.. run tag @s add UUIDFlag10-1
execute if score # _1 matches 2.. run tag @s add UUIDFlag11-0
execute if score # _1 matches 2.. run scoreboard players remove # _1 2
execute unless score # _1 matches 2.. run tag @s add UUIDFlag11-1
execute if score # _1 matches 1.. run tag @s add UUIDFlag12-0
execute unless score # _1 matches 1.. run tag @s add UUIDFlag12-1

#補足
#このUUIDFlagはプレイヤーが敵に攻撃された際に、攻撃した敵を検知するためのものです。