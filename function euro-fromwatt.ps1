function euro-fromwatt
 {
    param ($watt) 

    $total = ($watt / 1000) *0.88
     
    write-output $total
    
    
}
