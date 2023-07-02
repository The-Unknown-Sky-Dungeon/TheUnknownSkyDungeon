##Skillを呼び出す
data modify storage tusd_: SkillList set from storage tusd_: AI.Turn[0].Skill[0].Call
function mob:core/ai/skill

##Intervalを適用する
execute store result storage tusd_: AI.Turn[0].Skill[0].Interval.Current int 1 run function mob:core/ai/turn/set_interval

##Loopを減少させる 0の場合は次のSkillに移行
execute store result storage tusd_: AI.Turn[0].Skill[0].Loop.Current int 0.99999 run data get storage tusd_: AI.Turn[0].Skill[0].Loop.Current
execute if data storage tusd_: AI.Turn[0].Skill[0].Loop{Current:0} run function mob:core/ai/turn/skip

##Turn Exitを確認する
execute if data storage tusd_: AI.Turn[0].Exit run function mob:core/ai/turn/exit

##リセット
scoreboard players reset $Max
scoreboard players reset $Min