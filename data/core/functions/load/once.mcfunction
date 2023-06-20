##############################
###初回ロード処理
##############################

###ゲームルール
#function core:load/gamerule

###ステータススコア
scoreboard objectives add HP health {"text":"HP"}
scoreboard objectives add HPMax dummy {"text":"最大HP"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add SP dummy {"text":"SP%"}
scoreboard objectives add EXP dummy {"text":"EXP"}
scoreboard objectives add EXPAll dummy {"text":"総取得EXP"}
scoreboard objectives add ATK dummy {"text":"攻撃力"}
scoreboard objectives add DEF dummy {"text":"防具値"}
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add CustomHeal dummy {"text":"カスタムHP回復"}
scoreboard objectives add Life dummy {"text":"スポナー破壊数"}
scoreboard objectives add BreakSpawner dummy {"text":"スポナー破壊数"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowAttack dummy {"text":"攻撃力強化"}
scoreboard objectives setdisplay belowName HP

###変数、乱数
scoreboard objectives add _ dummy {"text":"一時変数 _"}
scoreboard objectives add __ dummy {"text":"一時変数 __"}
scoreboard objectives add Random dummy {"text":"乱数用変数"}

###システムディメンション設定
execute in core:system run forceload add 0 0
execute in core:system run setblock 2 2 2 shulker_box
execute in core:system run setblock 2 3 2 oak_sign
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-0
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-1
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-2
execute in core:system positioned 5 10 5 run summon snowball ~ ~ ~ {NoGravity:1b,UUID:[I;0,0,0,3]}