##interval削減
execute store result storage tusd_: AI.Turn[0].Skill[0].Interval.Current int 0.99999 run data get storage tusd_: AI.Turn[0].Skill[0].Interval.Current
##Invervalが0の時、スキルを呼び出す
execute if data storage tusd_: AI.Turn[0].Skill[0].Interval{Current:0} run function mob:core/ai/turn/do