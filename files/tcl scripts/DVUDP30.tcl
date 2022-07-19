set ns [new Simulator]

set nr [open DVUDP30.tr w]
$ns trace-all $nr

set nf [open DVUDP30.nam w]
$ns namtrace-all $nf

# ----FINISH PROCEDURE----

proc finish {} {
  global ns nr nf
  $ns flush-trace
  close $nf
  close $nr
  exec nam DVUDP30.nam &
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
set n20 [$ns node]
set n21 [$ns node]
set n22 [$ns node]
set n23 [$ns node]
set n24 [$ns node]
set n25 [$ns node]
set n26 [$ns node]
set n27 [$ns node]
set n28 [$ns node]
set n29 [$ns node]
set n30 [$ns node]
set n31 [$ns node]

# ----CREATION OF LINKS----

$ns duplex-link $n6 $n8 14Mb 12ms DropTail
$ns duplex-link $n8 $n0 15Mb 16ms DropTail
$ns duplex-link $n0 $n13 16Mb 15ms DropTail
$ns duplex-link $n6 $n13 20Mb 17ms DropTail
$ns duplex-link $n8 $n9 12Mb 19ms DropTail
$ns duplex-link $n0 $n1 10Mb 20ms DropTail
$ns duplex-link $n9 $n10 5Mb 10ms DropTail
$ns duplex-link $n1 $n14 13Mb 12ms DropTail
$ns duplex-link $n14 $n15 15Mb 17ms DropTail
$ns duplex-link $n15 $n30 14Mb 14ms DropTail
$ns duplex-link $n14 $n30 10Mb 18ms DropTail
$ns duplex-link $n10 $n31 19Mb 13ms DropTail
$ns duplex-link $n10 $n3 6Mb 10ms DropTail
$ns duplex-link $n10 $n11 17Mb 15ms DropTail
$ns duplex-link $n31 $n11 10Mb 15ms DropTail
$ns duplex-link $n3 $n4 7Mb 16ms DropTail
$ns duplex-link $n3 $n15 6Mb 17ms DropTail
$ns duplex-link $n15 $n16 7Mb 10ms DropTail
$ns duplex-link $n11 $n4 18Mb 14ms DropTail
$ns duplex-link $n4 $n16 8Mb 17ms DropTail
$ns duplex-link $n11 $n12 15Mb 17ms DropTail
$ns duplex-link $n4 $n5 12Mb 18ms DropTail
$ns duplex-link $n12 $n2 7Mb 11ms DropTail
$ns duplex-link $n5 $n17 11Mb 15ms DropTail
$ns duplex-link $n12 $n7 12Mb 15ms DropTail
$ns duplex-link $n17 $n7 8Mb 16ms DropTail
$ns duplex-link $n17 $n29 16Mb 20ms DropTail
$ns duplex-link $n7 $n18 9Mb 15ms DropTail
$ns duplex-link $n29 $n23 18Mb 11ms DropTail
$ns duplex-link $n18 $n19 17Mb 16ms DropTail
$ns duplex-link $n18 $n23 14Mb 15ms DropTail
$ns duplex-link $n23 $n24 14Mb 14ms DropTail
$ns duplex-link $n24 $n28 15Mb 14ms DropTail
$ns duplex-link $n23 $n28 5Mb 13ms DropTail
$ns duplex-link $n19 $n20 19Mb 20ms DropTail
$ns duplex-link $n19 $n26 11Mb 15ms DropTail
$ns duplex-link $n24 $n25 8Mb 18ms DropTail
$ns duplex-link $n26 $n25 13Mb 16ms DropTail
$ns duplex-link $n20 $n21 12Mb 16ms DropTail
$ns duplex-link $n21 $n22 9Mb 20ms DropTail
$ns duplex-link $n22 $n25 13Mb 10ms DropTail
$ns duplex-link $n21 $n27 7Mb 19ms DropTail
$ns duplex-link $n22 $n27 6Mb 19ms DropTail

# ----ORIENTATION OF LINKS----

$ns duplex-link-op $n6 $n8 orient right-up
$ns duplex-link-op $n8 $n0 orient down
$ns duplex-link-op $n0 $n13 orient down
$ns duplex-link-op $n6 $n13 orient right-down
$ns duplex-link-op $n8 $n9 orient right
$ns duplex-link-op $n0 $n1 orient right
$ns duplex-link-op $n9 $n10 orient right
$ns duplex-link-op $n1 $n14 orient down
$ns duplex-link-op $n14 $n15 orient right
$ns duplex-link-op $n15 $n30 orient down
$ns duplex-link-op $n14 $n30 orient right-down
$ns duplex-link-op $n10 $n31 orient up
$ns duplex-link-op $n10 $n3 orient down
$ns duplex-link-op $n10 $n11 orient right
$ns duplex-link-op $n31 $n11 orient right-down
$ns duplex-link-op $n3 $n4 orient right
$ns duplex-link-op $n3 $n15 orient down
$ns duplex-link-op $n15 $n16 orient right
$ns duplex-link-op $n11 $n4 orient down
$ns duplex-link-op $n4 $n16 orient down
$ns duplex-link-op $n11 $n12 orient right
$ns duplex-link-op $n4 $n5 orient right
$ns duplex-link-op $n12 $n2 orient up
$ns duplex-link-op $n5 $n17 orient down
$ns duplex-link-op $n12 $n7 orient right-down
$ns duplex-link-op $n17 $n7 orient right-up
$ns duplex-link-op $n17 $n29 orient right
$ns duplex-link-op $n7 $n18 orient right
$ns duplex-link-op $n29 $n23 orient right
$ns duplex-link-op $n18 $n19 orient up
$ns duplex-link-op $n18 $n23 orient down
$ns duplex-link-op $n23 $n24 orient right
$ns duplex-link-op $n24 $n28 orient down
$ns duplex-link-op $n23 $n28 orient right-down
$ns duplex-link-op $n19 $n20 orient right
$ns duplex-link-op $n19 $n26 orient right-down
$ns duplex-link-op $n24 $n25 orient right
$ns duplex-link-op $n26 $n25 orient right-down
$ns duplex-link-op $n20 $n21 orient right
$ns duplex-link-op $n21 $n22 orient down
$ns duplex-link-op $n22 $n25 orient down
$ns duplex-link-op $n21 $n27 orient right
$ns duplex-link-op $n22 $n27 orient right-up

$ns rtproto DV

# ----ALTERING LINKS----

$ns rtmodel-at 4.0 down $n9 $n10
$ns rtmodel-at 4.5 up $n9 $n10
$ns rtmodel-at 8.0 down $n7 $n18
$ns rtmodel-at 8.3 up $n7 $n18
$ns rtmodel-at 15.0 down $n20 $n21
$ns rtmodel-at 15.3 up $n20 $n21

# ----CREATING AND ATTACHING AGENTS----
set udp [new Agent/UDP]
$udp set class_ 1
$ns attach-agent $n6 $udp

set cbr [new Application/Traffic/CBR]
$cbr set type_ CBR
$cbr set packet_size_ 3000

$cbr attach-agent $udp

set null [new Agent/Null]
$ns attach-agent $n27 $null
$ns connect $udp $null
$udp set fid_ 1
$ns color 1 Red

$ns at 0.0 "$n6 color chocolate"
$ns at 0.0 "$n27 color chocolate" 

$ns at 0.3 "$cbr start"
$ns at 20 "finish"
$ns run

