##############################
###MOB削除処理
##############################

###モブ削除処理
execute if entity @s[tag=DeathAI] at @s run function mob:core/ai/death
data merge entity @s[tag=Garbage] {CustomName:"",Health:0f,Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}],Owner:[I;0,0,0,0]}
kill @s[tag=Garbage]