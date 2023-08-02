#> mob:spawner/search_pos/
#
# ライブラリを用いて敵MOBが召喚できる場所を探す
#
# @within function mob:spawner/summon_loop

#>Temp
# @private
    #declare score_holder $LoopTemp

    scoreboard players set $LoopTemp _1 8
    function mob:spawner/search_pos/loop
    execute unless score $LoopTemp _1 matches -1 run tag @s remove Success

# リセット
    scoreboard players reset $LoopTemp
