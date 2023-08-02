#> player:skill/set_skill/error/no_main
#
# メインハンドにアイテムを持っていない場合のエラー
#
# @within function player:skill/set_skill/

tellraw @s {"translate":"メインハンドにアイテムを持っていません。","color":"red"}
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.75