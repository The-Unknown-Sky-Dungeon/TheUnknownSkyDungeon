##############################
###毎Tick AIを実行する
##############################

##スキルリストを読み込んであげる
data modify storage tusd_: SkillList set from storage tusd_: AI.Tick
function mob:core/ai/skill