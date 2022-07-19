BEGIN {
  start_Time=0
  send_count=0
  received_count=0
  end_Time=0
  received_data=0
  throughput=0
  pdr=0
 }
{
 if($1=="+" && $3=="0" && $5=="tcp")
  {
   send_count++
   if(flag==0){
    start_Time=$2;
    flag=1
   
   }
  }
 if($1=="r" && $4=="17" && $5=="tcp")
  { 
   received_count++
   end_Time=$2
   received_data+=$6
  }
  if($1=="+" && $3=="0" && $5=="cbr")
  {
   send_count++
   if(flag==0){
    start_Time=$2;
    flag=1
   
   }
  }
 if($1=="r" && $4=="17" && $5=="cbr")
  { 
   received_count++
   end_Time=$2
   received_data+=$6
  }
  
  if($1=="+" && $3=="6" && $5=="tcp")
  {
   send_count++
   if(flag==0){
    start_Time=$2;
    flag=1
   
   }
  }
 if($1=="r" && $4=="27" && $5=="tcp")
  { 
   received_count++
   end_Time=$2
   received_data+=$6
  }
  if($1=="+" && $3=="6" && $5=="cbr")
  {
   send_count++
   if(flag==0){
    start_Time=$2;
    flag=1
   
   }
  }
 if($1=="r" && $4=="27" && $5=="cbr")
  { 
   received_count++
   end_Time=$2
   received_data+=$6
  }
}

END {
  printf("Send Count : %d \n",send_count)
  printf("Received Count : %d \n",received_count)
  printf("Start time is %f sec \n ",start_Time)
  printf("End time is %f sec \n ",end_Time)
  printf("Received data is %f bytes \n " ,received_data)
  throughput=(received_data*8)/(end_Time-start_Time)
  printf("Throughput is %f bps \n " ,throughput)
  pdr=received_count/send_count
  printf("Packet Delivery Ratio is %f \n ",pdr)
  packetloss=send_count-received_count
  printf("Packet Loss is %d \n",packetloss)
 }
