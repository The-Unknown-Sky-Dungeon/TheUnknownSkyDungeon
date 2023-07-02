##Mob_IDとFunction_IDを取得する
execute store result score $MobID _1 run data get storage tusd_: Skill.ID[0]
execute store result score $FunctionID _1 run data get storage tusd_: Skill.ID[1]

##ID(0以上)があれば気合検索
#後ほど軽量化処理を施すが現状はこのままでOK
execute if score $MobID _1 matches 0.. run function #mob:mob/function

##リセット
scoreboard players reset $MobID
scoreboard players reset $FunctionID