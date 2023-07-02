##スキルを順番に実行する
data modify storage tusd_: Skill set from storage tusd_: SkillList[0]
function mob:core/ai/call_function

data remove storage tusd_: SkillList[0]
execute if data storage tusd_: SkillList[0] run function mob:core/ai/skill