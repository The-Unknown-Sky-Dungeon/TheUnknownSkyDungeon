##Loopの受け渡し
data modify storage tusd_: AI.Turn[0].Skill[0].Loop.Current set from storage tusd_: AI.Turn[0].Skill[0].Loop.Max

##Once=0でなければリストの最後に付け加えてあげる
execute if data storage tusd_: AI.Turn[0].Skill[0].Once store result storage tusd_: AI.Turn[0].Skill[0].Once int 0.99999 run data get storage tusd_: AI.Turn[0].Skill[0].Once
execute unless data storage tusd_: AI.Turn[0].Skill[{Once:0}] run data modify storage tusd_: AI.Turn[0].Skill append from storage tusd_: AI.Turn[0].Skill[0]
data remove storage tusd_: AI.Turn[0].Skill[0]

##Skillがなくなればリストを削除
execute unless data storage tusd_: AI.Turn[0].Skill[0] run data remove storage tusd_: AI.Turn[0].Skill