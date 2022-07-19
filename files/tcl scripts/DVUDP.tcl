set ns [new Simulator]

set nr [open DVUDP.tr w]
$ns trace-all $nr

set nf [open DVUDP.nam w]
$ns namtrace-all $nf

# ----FINISH PROCEDURE----

proc finish {} {
  global ns nr nf
  $ns flush-trace
  close $nf
  close $nr
  exec nam DVUDP.nam &
  exit 0
}
 # ----CREATION OF NODES----

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]
set n12 [$ns node]
set n13 [$ns node]
set n14 [$ns node]
set n15 [$ns node]
set n16 [$ns node]
set n17 [$ns node]
set n18 [$ns node]
set n19 [$ns node]

# ----CREATION OF LINKS----

$ns duplex-link $n0 $n1 6Mb 12ms DropTail
$ns duplex-link $n1 $n2 15Mb 20ms DropTail
$ns duplex-link $n2 $n4 11Mb 15ms DropTail
$ns duplex-link $n4 $n3 15Mb 13ms DropTail
$ns duplex-link $n3 $n6 8Mb 19ms DropTail
$ns duplex-link $n4 $n7 13Mb 12ms DropTail
$ns duplex-link $n0 $n4 15Mb 19ms DropTail
$ns duplex-link $n4 $n6 12Mb 10ms DropTail
$ns duplex-link $n4 $n5 15Mb 18ms DropTail
$ns duplex-link $n7 $n5 20Mb 19ms DropTail
$ns duplex-link $n6 $n8 9Mb 16ms DropTail
$ns duplex-link $n7 $n8 19Mb 17ms DropTail
$ns duplex-link $n5 $n9 17Mb 20ms DropTail
$ns duplex-link $n9 $n11 5Mb 13ms DropTail
$ns duplex-link $n8 $n11 18Mb 11ms DropTail
$ns duplex-link $n5 $n10 13Mb 18ms DropTail
$ns duplex-link $n10 $n12 15Mb 13ms DropTail
$ns duplex-link $n9 $n12 8Mb 15ms DropTail
$ns duplex-link $n9 $n14 16Mb 12ms DropTail
$ns duplex-link $n11 $n13 8Mb 18ms DropTail
$ns duplex-link $n12 $n15 11Mb 19ms DropTail
$ns duplex-link $n14 $n16 6Mb 14ms DropTail
$ns duplex-link $n14 $n17 20Mb 13ms DropTail
$ns duplex-link $n14 $n18 18Mb 16ms DropTail
$ns duplex-link $n14 $n19 9Mb 5ms DropTail
$ns duplex-link $n15 $n19 20Mb 18ms DropTail
$ns duplex-link $n16 $n17 8Mb 11ms DropTail
$ns duplex-link $n17 $n18 11Mb 18ms DropTail

# ----ORIENTATION OF LINKS----

$ns duplex-link-op $n0 $n1 orient down
$ns duplex-link-op $n1 $n2 orient down
$ns duplex-link-op $n2 $n4 orient right-up
$ns duplex-link-op $n3 $n4 orient down
$ns duplex-link-op $n3 $n6 orient right
$ns duplex-link-op $n4 $n7 orient right
$ns duplex-link-op $n0 $n4 orient right-down
$ns duplex-link-op $n4 $n6 orient right-up
$ns duplex-link-op $n4 $n5 orient right-down
$ns duplex-link-op $n7 $n5 orient down
$ns duplex-link-op $n6 $n8 orient right
$ns duplex-link-op $n7 $n8 orient right-up
$ns duplex-link-op $n5 $n9 orient right-up
$ns duplex-link-op $n9 $n11 orient right-up
$ns duplex-link-op $n8 $n11 orient right
$ns duplex-link-op $n5 $n10 orient right
$ns duplex-link-op $n10 $n12 orient right
$ns duplex-link-op $n9 $n12 orient right-down
$ns duplex-link-op $n9 $n14 orient right
$ns duplex-link-op $n11 $n13 orient right
$ns duplex-link-op $n12 $n15 orient right
$ns duplex-link-op $n14 $n16 orient right-up
$ns duplex-link-op $n14 $n17 orient right-up
$ns duplex-link-op $n14 $n18 orient right
$ns duplex-link-op $n14 $n19 orient right-down
$ns duplex-link-op $n15 $n19 orient right
$ns duplex-link-op $n16 $n17 orient right
$ns duplex-link-op $n17 $n18 orient down

$ns rtproto DV

# ----ALTERING LINKS----

$ns rtmodel-at 4.0 down $n4 $n5
$ns rtmodel-at 4.5 up $n4 $n5
$ns rtmodel-at 8.0 down $n9 $n14
$ns rtmodel-at 8.3 up $n9 $n14
$ns rtmodel-at 15.0 down $n14 $n17
$ns rtmodel-at 15.3 up $n14 $n17

# ----CREATING AND ATTACHING AGENTS----
set udp [new Agent/UDP]
$udp set class_ 1
$ns attach-agent $n0 $udp

set cbr [new Application/Traffic/CBR]
$cbr set type_ CBR
$cbr set packet_size_ 3000

$cbr attach-agent $udp

set null [new Agent/Null]
$ns attach-agent $n17 $null
$ns connect $udp $null
$udp set fid_ 1
$ns color 1 Red

$ns at 0.0 "$n0 color chocolate"
$ns at 0.0 "$n17 color chocolate" 

$ns at 0.3 "$cbr start"
$ns at 20 "finish"
$ns run

