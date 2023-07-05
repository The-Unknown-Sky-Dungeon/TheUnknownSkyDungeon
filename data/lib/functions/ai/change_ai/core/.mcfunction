#> lib:ai/change_ai/core/
#
# ChangeAIに関するメイン処理を行います
#
# @within function lib:ai/change_ai/

# AIを書き換え
    execute if data storage tusd_lib: Argument.DeathAI run data modify storage tusd_: AI.Death set from storage tusd_lib: Argument.DeathAI
    execute if data storage tusd_lib: Argument.DamageAI run data modify storage tusd_: AI.Damage set from storage tusd_lib: Argument.DamageAI
    execute if data storage tusd_lib: Argument.AttackAI run data modify storage tusd_: AI.Attack set from storage tusd_lib: Argument.AttackAI
    execute if data storage tusd_lib: Argument.TickAI run data modify storage tusd_: AI.Tick set from storage tusd_lib: Argument.TickAI
    execute if data storage tusd_lib: Argument.Tick2AI run data modify storage tusd_: AI.Tick2 set from storage tusd_lib: Argument.Tick2AI
    execute if data storage tusd_lib: Argument.Tick4AI run data modify storage tusd_: AI.Tick4 set from storage tusd_lib: Argument.Tick4AI

# タグを一旦削除
    tag @s remove DeathAI
    tag @s remove DamageAI
    tag @s remove AttackAI

# 書き換えたAIの中身があるかどうか判定してタグ付け
    execute if data storage tusd_: AI.Death[0] run tag @s add DeathAI
    execute if data storage tusd_: AI.Damage[0] run tag @s add DamageAI
    execute if data storage tusd_: AI.Attack[0] run tag @s add AttackAI

#データを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage tusd_: AI