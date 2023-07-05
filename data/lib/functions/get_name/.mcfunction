#> lib:get_name/
#
# 実行者の名前を取得します
#
# @input as player
# @output
#   storage tusd_lib: Return.Name: String
#   プレイヤー名
# @api

execute in core:system run loot replace block 2 2 2 container.0 loot lib:get_name
execute in core:system run data modify storage tusd_lib: Return.Name set from block 2 2 2 Items[0].tag.SkullOwner.Name