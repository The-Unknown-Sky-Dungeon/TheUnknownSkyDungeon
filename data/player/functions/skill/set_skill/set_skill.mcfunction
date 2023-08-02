#> player:skill/set_skill/set_skill
#
# 武器にスキルをセットする
#
# @within function player:skill/set_skill/check_weapon

# レベル条件を満たしているかを判定する

# 設定した情報をItemストレージに入れる
    data modify storage tusd_: Item.tag.Skill set from storage tusd_: Skill
# 情報として不要なものは削除する
    data remove storage tusd_: Item.tag.Skill.Lore
    data remove storage tusd_: Item.tag.Skill.Condition
    data remove storage tusd_: Item.tag.Skill.AttackInfo
    data remove storage tusd_: Item.tag.Skill.SneakLore