##############################
###4Tickに1回 AIを実行する
##############################

##4Tickに1回発動するFunction
data modify storage tusd_: SkillList set from storage tusd_: AI.Tick4
execute if score # 4Tick matches 1 run function mob:core/ai/skill