## 敵モブIDが$MobIDと合致するかをcheckする
#新たに敵モブを作る際は、$MobIDの条件にID番号を入力すること
#また entity:mob_ai のFunctionTagに必ず登録すること
execute if score _ MobID matches 0 run function asset:mobs/0000.template/summon/2.summon