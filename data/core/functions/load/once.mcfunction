##############################
###初回ロード処理
##############################

###ゲームルール
#function core:load/gamerule

###ステータススコア
scoreboard objectives add HP dummy {"text":"HP"}
scoreboard objectives add PlayerHP health {"text":"HP"}
scoreboard objectives add HPMax dummy {"text":"最大HP"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add SP dummy {"text":"SP%"}
scoreboard objectives add EXP dummy {"text":"EXP"}
scoreboard objectives add EXPAll dummy {"text":"総取得EXP"}
scoreboard objectives add ATK dummy {"text":"攻撃力"}
scoreboard objectives add DEF dummy {"text":"防具値"}
scoreboard objectives add HPRegen dummy {"text":"HP回復量"}
scoreboard objectives add MPRegen dummy {"text":"MP回復量"}
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add CustomHeal dummy {"text":"カスタムHP回復"}
scoreboard objectives add Life dummy {"text":"スポナー破壊数"}
scoreboard objectives add BreakSpawner dummy {"text":"スポナー破壊数"}
scoreboard objectives add GlowATK dummy {"text":"攻撃力強化"}
scoreboard objectives add GlowDEF dummy {"text":"防御力強化"}
scoreboard objectives add GlowHP dummy {"text":"HP強化"}
scoreboard objectives add GlowMP dummy {"text":"MP強化"}
scoreboard objectives add GlowHPRegen dummy {"text":"HP回復強化"}
scoreboard objectives add GlowMPRegen dummy {"text":"MP回復強化"}
scoreboard objectives add GlowImmune dummy {"text":"免疫力強化"}
scoreboard objectives add WarriorLv dummy {"text":"ウォーリアLv"}
scoreboard objectives add SorcererLv dummy {"text":"ソーサラーLv"}
scoreboard objectives add SniperLv dummy {"text":"スナイパーLv"}
scoreboard objectives add SummonerLv dummy {"text":"サモナーLv"}
scoreboard objectives setdisplay belowName PlayerHP

###敵MOB用スコア
scoreboard objectives add MobID dummy {"text":"MOB ID"}
scoreboard objectives add MobUUID dummy {"text":"MOB UUID"}
scoreboard objectives add NativeFlag dummy {"text":"常時Tick処理フラグ"}
scoreboard objectives add Invincible dummy {"text":"無敵スコア"}
scoreboard objectives add ResistRate dummy {"text":"ダメージ軽減率"}
scoreboard objectives add SpawnerHP dummy {"text":"スポナーの体力"}
scoreboard objectives add SpawnerDelay dummy {"text":"MOB召喚までの時間"}
function #asset:mobs/load

###トリガースコア作成
scoreboard objectives add UseShieldTime dummy {"text":"盾を使用した最新時間"}

###変数、乱数
scoreboard objectives add _1 dummy {"text":"一時変数1"}
scoreboard objectives add _2 dummy {"text":"一時変数2"}
scoreboard objectives add _3 dummy {"text":"一時変数3"}
scoreboard objectives add Calc dummy {"text":"計算用変数"}
scoreboard objectives add Ret dummy {"text":"戻り値用変数"}
scoreboard objectives add Lib dummy {"text":"ライブラリ用変数"}
scoreboard objectives add Random dummy {"text":"乱数用変数"}

##時間管理スコアの設定
scoreboard objectives add 2Tick dummy {"text": "2Tick管理スコア"}
scoreboard objectives add 4Tick dummy {"text": "4Tick管理スコア"}
scoreboard objectives add 10Tick dummy {"text": "10Tick管理スコア"}
scoreboard objectives add 20Tick dummy {"text": "20Tick管理スコア"}
execute store result score _ _1 run time query gametime
execute store result score _ 2Tick run scoreboard players add _ _1 1
execute store result score _ 4Tick run scoreboard players get _ _1
execute store result score _ 10Tick run scoreboard players get _ _1
execute store result score _ 20Tick run scoreboard players get _ _1

##Oh_My_Dat用のスコア
scoreboard objectives add OhMyDatCache dummy {"text": "OhMyDatIDのキャッシュ"}

###システムディメンション設定
execute in core:system run forceload add 0 0
execute in core:system run setblock 2 2 2 shulker_box
execute in core:system run setblock 2 3 2 oak_sign
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-0
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-1
execute in core:system positioned 5 5 5 run function calc:geometory/0-0-0-0-2
execute in core:system positioned 5 10 5 run summon snowball ~ ~ ~ {NoGravity:1b,UUID:[I;0,0,0,3]}

###チーム作成
team add Green {"text":"味方緑チーム"}
team modify Green friendlyFire false
team modify Green collisionRule never
team modify Green seeFriendlyInvisibles false
team modify Green color green
team add Gold {"text":"味方黄色チーム"}
team modify Gold friendlyFire false
team modify Gold collisionRule never
team modify Gold seeFriendlyInvisibles false
team modify Gold color gold
team add Red {"text":"味方赤チーム"}
team modify Red friendlyFire false
team modify Red collisionRule never
team modify Red seeFriendlyInvisibles false
team modify Red color green
team add Enemy {"text":"敵チーム"}
team add Friend {"text":"味方チーム"}