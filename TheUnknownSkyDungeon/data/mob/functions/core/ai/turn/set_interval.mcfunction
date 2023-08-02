execute store result score _ Random run function calc:random
execute store result score $Max _1 run data get storage tusd_: AI.Turn[0].Skill[0].Interval.Max
execute store result score $Min _1 run data get storage tusd_: AI.Turn[0].Skill[0].Interval.Min
scoreboard players operation $Max _1 -= $Min _1
scoreboard players add $Max _1 1
scoreboard players operation _ Random %= $Max _1
scoreboard players operation _ Random += $Min _1