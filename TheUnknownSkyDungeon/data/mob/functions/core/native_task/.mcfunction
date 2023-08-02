##############################
### 常時Tick処理
##############################

##MoreDirectiondライブラリの処理
execute if entity @s[tag=MoreDirect] run function lib:more_directions/core/tick

##Parabolicライブラリの処理
execute if entity @s[tag=Parabolic] run function lib:parabolic_motion/tick