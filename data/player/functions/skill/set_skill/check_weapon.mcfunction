#> player:skill/set_skill/check_weapon
#
# 武器が条件を満たしているかどうかを判定する
#
# @within function player:skill/set_skill/

#>Temp
# @private
    #declare score_holder $Temp

# 初期化
    scoreboard players set $Temp _1 0

# メインハンドのアイテムに保存されいるWeapon Tagより武器の判定をする
    execute if data storage tusd_: Skill{Trigger:"剣・斧で攻撃"} unless data storage tusd_: Item.tag{Weapon:"剣"} unless data storage tusd_: Item.tag{Weapon:"斧"} run scoreboard players set $Temp _1 1
    execute if data storage tusd_: Skill{Trigger:"杖または本を使用"} unless data storage tusd_: Item.tag{Weapon:"杖"} unless data storage tusd_: Item.tag{Weapon:"本"} run scoreboard players set $Temp _1 1
    execute if data storage tusd_: Skill{Trigger:"弓を使用"} unless data storage tusd_: Item.tag{Weapon:"弓"} run scoreboard players set $Temp _1 1
    execute if data storage tusd_: Skill{Trigger:"銃を使用"} unless data storage tusd_: Item.tag{Weapon:"銃"} run scoreboard players set $Temp _1 1
    execute if data storage tusd_: Skill{Trigger:"斧を使用"} unless data storage tusd_: Item.tag{Weapon:"斧"} run scoreboard players set $Temp _1 1
    execute if data storage tusd_: Skill{Trigger:"剣を持った状態でスニーク解除"} unless data storage tusd_: Item.tag{Weapon:"剣"} run scoreboard players set $Temp _1 1

# 付与可能ならデータを付与する
    execute if score $Temp _1 matches 1 run function player:skill/set_skill/error/no_match
    execute if score $Temp _1 matches 0 run function player:skill/set_skill/set_skill

# リセット
    scoreboard players reset $Temp