#> asset:more_directions/0000.template/act/2.act
#
# MoreDirectionsを設定時に呼び出されるFunciton
# ※ここで実行分岐を行います
#   _ Calcというスコアに実行段階が保存されていますのでそれに従って分岐させてください
#
#

#実行分岐
    execute if score _ Calc matches 15 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_01
    execute if score _ Calc matches 14 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_02
    execute if score _ Calc matches 13 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_03
    execute if score _ Calc matches 12 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_04
    execute if score _ Calc matches 11 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_05
    execute if score _ Calc matches 10 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_06
    execute if score _ Calc matches 9 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_07
    execute if score _ Calc matches 8 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_08
    execute if score _ Calc matches 7 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_09
    execute if score _ Calc matches 6 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_10
    execute if score _ Calc matches 5 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_11
    execute if score _ Calc matches 4 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_12
    execute if score _ Calc matches 3 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_13
    execute if score _ Calc matches 2 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_14
    execute if score _ Calc matches 1 anchored eyes run function asset:more_directions/0000.template/vfx/doom_cast_15