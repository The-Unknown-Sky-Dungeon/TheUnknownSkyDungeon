##############################
###召喚時にAIを実行する
##############################

##AIを取り出して実行
data modify storage tusd_: SkillList set from storage tusd_: AI.Initial
function mob:core/ai/skill

##データを元に戻してあげる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI

##リセット
data remove storage tusd_: SkillList
data remove storage tusd_: Skill