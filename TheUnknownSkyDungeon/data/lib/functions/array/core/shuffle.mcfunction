#> lib:array/core/shuffle
# @within function lib:array/**

execute store result score $Index Lib run function calc:random
scoreboard players operation $Index Lib %= $ListSize Lib
execute if score $Index Lib matches 1.. run function lib:array/core/move
data modify storage tusd_lib: ArrayO append from storage tusd_lib: Array[-1]
data remove storage tusd_lib: Array[-1]
data modify storage tusd_lib: Array append from storage tusd_lib: Cache[]
data remove storage tusd_lib: Cache
scoreboard players remove $ListSize Lib 1
execute if score $ListSize Lib matches 1.. run function lib:array/core/shuffle