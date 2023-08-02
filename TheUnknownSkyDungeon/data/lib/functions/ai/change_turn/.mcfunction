#> lib:ai/change_turn/
#
# AIを次のTurnへと進める
#
# ※必ず mob:mob/***/function/*** 内で実行すること。
#
# @input
#   storage tusd_lib:
#       Argument.Loop: int
#       Argument.Set: int
#       Argument.Random?: boolean
# @api

# ストレージ検証
    execute unless data storage tusd_: AI run tellraw @s [{"text":"ChangeTurnがMOB_AI内で実行されていません"}]
    execute unless data storage tusd_lib: Argument.Loop unless data storage tusd_lib: Argument.Set unless data storage tusd_lib: Argument.Random run tellraw @s [{"text":"ChangeTurnの詳細が設定されていません"}]

# 本処理へ移行
    execute if data storage tusd_: AI run function lib:ai/change_turn/core/

# リセット
    data remove storage tusd_lib: Argument