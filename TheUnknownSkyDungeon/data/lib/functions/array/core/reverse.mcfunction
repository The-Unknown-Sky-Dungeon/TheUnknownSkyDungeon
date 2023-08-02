#> lib:array/core/reverse
# @within function lib:array/**

execute store result score $Index _1 if data storage tusd_lib: Array[]
function lib:array/core/move
data modify storage tusd_lib: Array set from storage tusd_lib: Cache
data remove storage tusd_lib: Cache
scoreboard players reset $Index