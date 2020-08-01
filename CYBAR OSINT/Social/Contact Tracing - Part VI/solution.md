# Contact Tracing - Part VI

## Details

Category: SOCIAL

Type: Automatic

Points: 75

Difficulty: Easy

Status: Playable after CTF ends

Real Person or Ficticious: Real (it's a police car)

## Description 
We've learned that Pong has a vehicle and may have visited nearby towns in the past few months. We were going to do license plate detection but no doubt the Roomba's have either changed this or prevented plate reads. We need to know the exact make and model car Pong is driving to get visual confirmation.

Find the make and model of Pong's vehicle.

Flag format: CYBAR{x x}

## Solution 

Pong tweeted about getting a speeding ticket and his license plate.
![speeding ticket](https://github.com/mashmllo/ctf-writeups/blob/master/CYBAR%20OSINT/Social/Contact%20Tracing%20-%20Part%20VI/speeding%20ticket.jpg)
![license plate](https://github.com/mashmllo/ctf-writeups/blob/master/CYBAR%20OSINT/Social/Contact%20Tracing%20-%20Part%20VI/license%20plate.png)
Simply enter the lisence plate in a government [website](https://www.service.transport.qld.gov.au/checkrego/public/Welcome.xhtml), the information about the registered vehicle is shown. 
![result](https://github.com/mashmllo/ctf-writeups/blob/master/CYBAR%20OSINT/Social/Contact%20Tracing%20-%20Part%20VI/results%20of%20vehicle.jpg)

## Flag 
CYBAR{KIA Stinger}
