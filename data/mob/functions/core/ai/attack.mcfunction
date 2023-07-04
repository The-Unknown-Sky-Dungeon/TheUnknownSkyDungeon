##############################
###攻撃時にAIを実行する
##############################

##AIを取り出して実行
function oh_my_dat:please
data modify storage tusd_: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI
data modify storage tusd_: SkillList set from storage tusd_: AI.Attack
function mob:core/ai/skill

##データを元に戻してあげる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI

##リセット
data remove storage tusd_: AI
data remove storage tusd_: SkillList
data remove storage tusd_: Skill