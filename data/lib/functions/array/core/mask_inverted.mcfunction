#> lib:array/core/mask_inverted
# @within function lib:array/**mask_inverted

# マスクデータの一般化
    data modify storage tusd_lib: Mask set from storage tusd_lib: Masks[-1]
    execute if data storage tusd_lib: Mask{} run data modify storage tusd_lib: Mask set from storage tusd_lib: Mask._._
# マスクデータに合わせて値を追加する
    execute if data storage tusd_lib: {Mask:false} run data modify storage tusd_lib: Array append from storage tusd_lib: MaskElement
    execute if data storage tusd_lib: {Mask: true} run data modify storage tusd_lib: Array append from storage tusd_lib: CopiedArray[-1]
# 末尾削除
    data remove storage tusd_lib: CopiedArray[-1]
    data remove storage tusd_lib: Masks[-1]
# 要素の数がずれていないかのチェック
    execute if data storage tusd_lib: CopiedArray[0] unless data storage tusd_lib: Masks[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/mask","color":"white"}]
    execute unless data storage tusd_lib: CopiedArray[0] if data storage tusd_lib: Masks[0] run tellraw @a [{"text":"リストの要素の数が異なります。 / from lib:array/mask","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage tusd_lib: CopiedArray[0] if data storage tusd_lib: Masks[0] run function lib:array/core/mask_inverted