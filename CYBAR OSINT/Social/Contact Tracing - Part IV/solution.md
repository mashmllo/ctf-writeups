# Contact Tracing - Part IV

## Details

Category: SOCIAL

Type: Automatic

Points: 275

Difficulty: Medium

Status: Playable after CTF ends

Real Person or Ficticious: Fictitious

## Description 
We are trying to locate in which suburb Alycee's friend Marcel lives in, to zone in on potential areas of risk he may potentially cause having COVID19. Please find it for us so that we can get some agents there on the ground.

Flag format: CYBAR{x}

## Solution 

By reading the conversation between Marcel and Alycee, Marcel capitalize some of the words. The named of his cat is also known. By combining search terms of "RSPCA+euthenise+cat+ringworm+petition" in a search engine, 
a [petition page](https://www.change.org/p/rspca-stop-euthenising-cats-with-ringworms-or-other-treatable-conditions) is returned. In the description of the petition page, it is shown that it happened 6 years ago which matches the description given by Marcel. 
The description also provides a location of the RSPCA where the cat is being put down. When the location, Burwood, is searched, it is shown that it is a suburb. 


## Flag 
CYBAR{Burwood}
