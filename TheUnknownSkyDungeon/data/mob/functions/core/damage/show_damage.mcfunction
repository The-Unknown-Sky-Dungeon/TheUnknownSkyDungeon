##############################
### ダメージ表示
##############################

summon text_display ~ ~ ~ {billboard:"center",shadow:1b,see_through:0b,Tags:["Mob","DamageDisplay"],brightness:{sky:15,block:10},text:'{"text":""}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
scoreboard players set _ _1 10
scoreboard players operation _ _2 = @s Damage
scoreboard players operation _ _2 %= _ _1
scoreboard players operation _ _3 = @s Damage
scoreboard players operation _ _3 /= _ _1
execute if score @s Damage matches 0.. run data merge entity @e[distance=..0.01,tag=DamageDisplay,limit=1] {text:'[{"score":{"name":"_","objective":"_3"},"font":"hp_minus"},{"text":".","font":"hp_minus"},{"score":{"name":"_","objective":"_2"},"font":"hp_minus"}]'}
execute if score @s Damage matches ..-1 run data merge entity @e[distance=..0.01,tag=DamageDisplay,limit=1] {text:'[{"score":{"name":"_","objective":"_3"},"font":"hp_plus"},{"text":".","font":"hp_plus"},{"score":{"name":"_","objective":"_2"},"font":"hp_plus"}]'}

data modify storage tusd_: Damage set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
execute as @e[distance=..0.01,tag=DamageDisplay,limit=1] at @a[sort=nearest,limit=1] run function #util:distance
execute store result storage tusd_: Damage.scale[0] float 0.0001 run data get storage util: out 2000
execute store result storage tusd_: Damage.scale[1] float 0.0001 run data get storage util: out 2000
execute store result storage tusd_: Damage.scale[2] float 0.0001 run data get storage util: out 2000

data modify entity @e[distance=..0.01,tag=DamageDisplay,limit=1] transformation set from storage tusd_: Damage
data remove storage tusd_: Damage