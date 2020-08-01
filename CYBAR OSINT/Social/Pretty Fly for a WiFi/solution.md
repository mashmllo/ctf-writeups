# Pretty Fly for a WiFi

## Details 

Category: SOCIAL <br>
Type: Automatic
<br>
Points: 250
<br>
Difficulty: Easy-Medium
<br>
Status: Playable after CTF ends
<br>
Real Person or Ficticious: Ficticious

## Description 

We need to find Marc's second office location (not the primary workplace) for the contract tracing. Business records tell us it's relatively new. Scour his Twitter account and see if there's anything that can help us geo-locate it. We don't need it down to the road, just the town (not suburb) and we can work from there.
<br>
Flag format: CYBAR{x}

## Solution 

Using Marc's twitter account, we are able to find a BSSID address in one of his tweet. 
![Wifi picture on Marc's tweet](https://github.com/mashmllo/ctf-writeups/blob/master/CYBAR%20OSINT/Social/Pretty%20Fly%20for%20a%20WiFi/pretty_fly_for_a_wifi.png) <br>
Using [Wigle.net](https://wigle.net/), the location of Marc's second office can be tracked. 

## Flag

CYBAR{Ballarat}

## Website 

[Marc's twitter page](https://twitter.com/HevisMarc)
