# Question 3(Level 3):

In this challenge, write a program to analyze a log file and summarize the results. Given a text file of an http requests log, list the number of requests from each host. Output should be directed to a file as described in the Program Description below. The format of the log file, a text file with a .log extension, follows. Each line contains a single log record with the following columns (in order):

1. The hostname of the host making the request.
2. This column's values are missing and were replaced by a hyphen.
3. A timestamp enclosed in square brackets following the format [DD/mmm/YYYY:HH:MM:SS -0400], where DD is the day of the month, mmm is the name of the month, YYYY is the year, HH:MM:SS is the time in 24-hour format, and -0400 is the time zone.
4. The request, enclosed in quotes (e.g.,"GET /media/catalog/product/cached2382938d1fed2fa0e610de14ff83091/1/0/103577-24-0_16596.jpg HTTP/1.0").
5. The HTTP response code.
6. The total number of bytes sent in the response

Log file sample:
https://fpsrechallenge.blob.core.windows.net/sre/fp-sre-challenge.log

> We love the code being readable, having comments and a good structure ;)
