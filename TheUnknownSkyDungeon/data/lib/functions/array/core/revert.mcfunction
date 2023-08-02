#> lib:array/core/revert
# @within function lib:array/**

data modify storage tusd_lib: Array append from storage tusd_lib: Cache[-1]
data remove storage tusd_lib: Cache[-1]
execute if data storage tusd_lib: Cache[0] run function lib:array/core/revert