#> lib:ai/change_ai/
#
# Turn_Aiを除いたAIを変更する
#
# ※必ず mob:mob/** /function/** 内で実行すること。
# ※Turn_AIは直接書き換えてもらって構いませんが、微調整が要必要。
#
# @input
#   as entity
#   storage tusd_lib:
#       Argument.DeathAI
#       Argument.DamageAI
#       Argument.AttackAI
#       Argument.TickAI
#       Argument.Tick2AI
#       Argument.Tick4AI
# @api

# ストレージ検証
    execute unless data storage tusd_: AI run tellraw @s [{"text":"ChangeTurnがMOB_AI内で実行されていません"}]

# 本処理へ移行
    execute if data storage tusd_: AI run function lib:ai/change_ai/core/

# リセット
    data remove storage tusd_lib: Argument