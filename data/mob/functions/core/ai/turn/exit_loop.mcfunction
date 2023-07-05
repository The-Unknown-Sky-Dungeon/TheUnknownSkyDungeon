execute store result storage tusd_: AI.Exit.Loop int 0.99999 run data get storage tusd_: AI.Exit.Loop
##Once=0でなければ、最後に付け加えてあげる
execute unless data storage tusd_: AI.Exit.Loop if data storage tusd_: AI.Turn[0].Once store result storage tusd_: AI.Turn[0].Once int 0.99999 run data get storage tusd_: AI.Turn[0].Once
execute unless data storage tusd_: AI.Turn[{Once:0}] run data modify storage tusd_: AI.Turn append from storage tusd_: AI.Turn[0]
data remove storage tusd_: AI.Turn[0]
execute unless data storage tusd_: AI.Exit{Loop:0} run function mob:core/ai/turn/exit_loop