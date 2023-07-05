#> lib:operate_rotation/
#
# 実行者のRotationの値を上限と下限を設定しつつ、ランダムでその間の値に変更します
#
# @input
#   as entity
#   storage tusd_lib:
#       Argument.RotateDirection.Min: float[2]
#       Argument.RotateDirection.Max: float[2]
#       Argument.Absolute.Horizontal?: boolean
#       Argument.Absolute.Vertical?: boolean
# @api

#ex)    Rotation:[30f,10f]の実行者が下限[10f,20f]のみを設定してこのコマンドを実行すると
#       Rotation:[30f+10f,10f+20f]となり[40f,30f]となります (tp @s ~ ~ ~ ~10 ~20 と同じ挙動をします)
#       Horizontalをtrueにすると水平向きが、Verticalをtrueにすると垂直向きが絶対向きとなります

# ストレージ検証
    execute unless data storage tusd_lib: Argument.RotateDirection.Min run tellraw @a [{"text":"Rotationの下限は必ず設定する必要があります"}]
    execute unless data storage tusd_lib: Argument.RotateDirection.Max run data modify storage tusd_lib: Argument.RotateDirection.Max set from storage tusd_lib: Argument.RotateDirection.Min

# 本処理に移行
    execute if data storage tusd_lib: Argument.RotateDirection.Min run function lib:operate_rotation/core/

# リセット
    data remove storage tusd_lib: Argument