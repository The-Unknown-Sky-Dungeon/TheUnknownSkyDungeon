###MOB AIの実行

##Oh_my_datよりAIを取り出す
function api:oh_my_dat_cache/please
data modify storage tusd_: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

##Call_Tick
execute if data storage tusd_: AI.Tick run function mob:core/ai/tick

##Call_Tick2
execute if data storage tusd_: AI.Tick2 run function mob:core/ai/tick2

##Call_Tick4
execute if data storage tusd_: AI.Tick4 run function mob:core/ai/tick4

##Call_Skill
execute if data storage tusd_: AI.Turn[0].Skill run function mob:core/ai/turn/check_interval

##データを元に戻してあげる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI

##リセット
data remove storage tusd_: AI
data remove storage tusd_: SkillList
data remove storage tusd_: Skill