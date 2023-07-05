#> lib:forward_spreader/core/
#
# 拡散処理の呼び出し部
#
# @within function lib:forward_spreader/*

# 実行座標に汎用EntityをTP
    execute in core:system positioned 0.0 0.0 0.0 run function calc:geometory/0-0-0-0-0
# 必要な実行座標のデータを取得
# N/A => Rotation[], ($Distance, $Diameter)
    execute store result score $Distance _1 run data get storage tusd_lib: Argument.Distance 10000
    execute store result score $Diameter _1 run data get storage tusd_lib: Argument.Spread 10000
    data modify storage tusd_lib: Rotation set from entity 0-0-0-0-0 Rotation
# オーバーフロー警告
    execute if score $Diameter _1 matches 46340.. run tellraw @a [{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
    execute if score $Diameter _1 matches ..-46340 run tellraw @a [{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
# 実行座標のデータからベクトルを取得する
# Rotation[] => ($YawSin, $YawCos, $PitchSin, $PitchCos)
    function lib:forward_spreader/core/yaw
    function lib:forward_spreader/core/pitch
# 処理の下準備
# ($Distance, $Diameter) => ($Radius, $Radius^2)
    function lib:forward_spreader/core/pre_randomizer
# 拡散範囲に収まるランダムなベクトルを生成する
# ($Diameter, $Radius, $Radius^2, $Distance) => ($VecX, $VecY, $VecZ)
    function lib:forward_spreader/core/randomizer
    scoreboard players operation $Vec _3 = $Distance _1
# 計算
# ($YawSin, $YawCos, $PitchSin, $PitchCos, $VecX, $VecY, $VecX) => ($X, $Y, $Z)
    function lib:forward_spreader/core/calc
# 適用
    function lib:forward_spreader/core/fetch
# リセット
    scoreboard players reset $XYZ
    data remove storage tusd_lib: Argument.Distance
    data remove storage tusd_lib: Argument.Spread
    data remove storage tusd_lib: Rotation