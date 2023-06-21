##############################
### ダメージ表示のアニメーション
##############################

##ちょっとずつスライドするように
data merge entity @s[scores={Invincible=1}] {start_interpolation:-1,interpolation_duration:17,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.4f,0f],scale:[1f,1f,1f]}}

##一気に小さく
data merge entity @s[scores={Invincible=17}] {start_interpolation:-1,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0f,0f,0f]}}

##20Tick以上経過したら消す
tag @s[scores={Invincible=21..},tag=DamageDisplay] add Garbage