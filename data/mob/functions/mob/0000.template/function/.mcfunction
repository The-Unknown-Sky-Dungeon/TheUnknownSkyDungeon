##Function_IDの検索
#新規にモブを作る際、IDの分岐はここですること
execute if score $FunctionID _1 matches 1 run function mob:mob/0000.template/function/1
execute if score $FunctionID _1 matches 2 run function mob:mob/0000.template/function/2