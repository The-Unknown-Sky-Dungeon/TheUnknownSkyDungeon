##Function_IDの検索
#新規にモブを作る際、IDの分岐はここですること
execute if score $FunctionID tmp matches 1 run function entity:mobs/0000.template/function/1
execute if score $FunctionID tmp matches 2 run function entity:mobs/0000.template/function/2