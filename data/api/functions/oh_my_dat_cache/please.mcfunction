##############################
###Oh_My_Datをキャッシュを取りつつ起動する
##############################
#ただしすでにOh_My_Datのストレージを受け取っていないとキャッシュは取れません

scoreboard players operation _ OhMyDatCache = @s OhMyDatID
function oh_my_dat:please