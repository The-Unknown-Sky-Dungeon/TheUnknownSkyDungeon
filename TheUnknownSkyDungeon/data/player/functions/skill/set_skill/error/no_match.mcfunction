#> player:skill/set_skill/error/no_match
#
# メインハンドの武器がスキルと合わない場合のエラー
#
# @within function player:skill/set_skill/check_weapon

tellraw @s {"translate":"アイテムの種類と発動条件が異なります。","color":"red"}
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.75
