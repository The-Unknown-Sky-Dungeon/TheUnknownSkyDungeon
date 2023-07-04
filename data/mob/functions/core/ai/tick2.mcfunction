##############################
###2Tickに1回 AIを実行する
##############################

##2Tickに1回発動するFunction
data modify storage tusd_: SkillList set from storage tusd_: AI.Tick2
execute if score # 2Tick matches 1 run function mob:core/ai/skill