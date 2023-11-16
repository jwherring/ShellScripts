BEGIN { FS = "\t"}
{ rowkey = sprintf("%s%s",$2,$8) }
!save[rowkey]++ 
