#> asset:skill/warrior/0.template/register/1.register
#
# スキルの登録処理
#
# @within function asset:skill/warrior/0.template/register/0.check

# スキルの説明や消費MPなどの詳細を設定する
# 手に武器を持った状態でこのFunctionを実行することで、武器にスキルを登録することが出来る

# スキルのJob (string)
    data modify storage tusd_: Skill.Job set value "Warrior"
# スキルのID (int)
    data modify storage tusd_: Skill.ID set value 0
# スキルのベース武器種 (string)
    data modify storage tusd_: Skill.Weapon set value "杖・本"
# スキルの名前 (TextComponentString)
    data modify storage tusd_: Skill.Name set value '{"translate":"ざーこ"}'
# スキルの説明文 (TextComponentString[])
    data modify storage tusd_: Skill.Lore set value ['{"translate":"ざーこ"}','{"translate":"ざーこ"}']
# スキルのトリガー (string)
    data modify storage tusd_: Skill.Trigger set value "杖または本を使用"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage tusd_: Skill.Condition set value
# MP消費量 (int)
    data modify storage tusd_: Skill.MPCost set value 0
# インターバル (int)
    data modify storage tusd_: Skill.Interval set value 10
# スキルのレベル上限 (int)
    data modify storage tusd_: Skill.MaxLevel set value 3
# スキル習得可となるレベル (int[])
    data modify storage tusd_: Skill.AcquireLevel set value [1,10,20]
# 攻撃に関する情報 -Damage量 (literal[]/literal) (オプション)
    data modify storage tusd_: Skill.AttackInfo.Damage set value [1029]
# 攻撃に関する情報 -防御無視 (boolean) (オプション)
    # data modify storage tusd_: AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲指定 (string) (オプション)
    data modify storage tusd_: Skill.AttackInfo.IsRangeAttack set value "never"
# 攻撃に関する情報 -攻撃範囲 (literal) (オプション)
    data modify storage tusd_: Skill.AttackInfo.AttackRange set value 30
# 攻撃に関する情報 -Hit属性 (boolean) (オプション)
    data modify storage tusd_: Skill.AttackInfo.Hit set value false
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage tusd_: Skill.DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage tusd_: Skill.DisableMPMessage set value
# スキルをスニーク使用時の説明文 (TextComponentString[])] (オプション)
    data modify storage tusd_: Skill.SneakLore set value ['{"translate":"ざーこ"}','{"translate":"ざーこ"}']
# スキルをスニーク使用時のMP消費量 (int) (オプション)
    data modify storage tusd_: Skill.SneakMPCost set value 0