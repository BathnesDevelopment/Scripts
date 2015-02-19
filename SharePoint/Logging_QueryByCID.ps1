Param([string] $CID)
get-splogevent -starttime (get-date).addminutes(-20) | ?{$_.Correlation -eq $CID} | select Area, Category, Level, EventID, Message | Format-List > spLog.txt
