#> player:skill/set_skill/
#
# 武器にスキルをセットする
#
# @input
#   as Player
#   storage tusd_: Skill
#       Job : string
#       ID : int
#       Weapon : string
#       Name : TextComponent
#       Lore : TextComponent[]
#       Trigger : string
#       Condition : TextComponent
#       MPCost : int
#       Interval : int
#       MaxLevel : int
#       AcquireLevel : int[]
#       AttackInfo : Component
#       SneakLore : TextComponent
#       SneakMPCost : int
# @within function asset:skill/warrior/**/register/1.register

# ストレージ検証
    execute unless data storage tusd_: Skill.Job run tellraw @a [{"text":"引数が足りません"},{"text":" Job","color":"red"}]
    execute unless data storage tusd_: Skill.ID run tellraw @a [{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage tusd_: Skill.Weapon run tellraw @a [{"text":"引数が足りません"},{"text":" Weapon","color":"red"}]
    execute unless data storage tusd_: Skill.Name run tellraw @a [{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage tusd_: Skill.Lore run tellraw @a [{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    execute unless data storage tusd_: Skill.Trigger run tellraw @a [{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    execute unless data storage tusd_: Skill.MPCost run tellraw @a [{"text":"引数が足りません"},{"text":" MPCost","color":"red"}]
    execute unless data storage tusd_: Skill.Interval run tellraw @a [{"text":"引数が足りません"},{"text":" Interval","color":"red"}]

# メインハンドのアイテムをストレージに保存
    data modify storage tusd_: Item set from entity @s SelectedItem

# そもそもアイテムを持っているかどうかを判定
    execute unless data storage tusd_: Item run function player:skill/set_skill/error/no_main
    execute if data storage tusd_: Item in core:system run function player:skill/set_skill/check_weapon

# リセット
    data remove storage tusd_: Skill
    data remove storage tusd_: Item