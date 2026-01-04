# Merge Sort

## Description
the Merge sort algorithm divides the array ina top-down manner recursively in half until each
partition contains only a single element (which is inherently sorted). On the way up it then
merges the two sub-divided partitions into the combined partition they were sub-divided from,
now in a sorted manner by comparing elements from each sub-partition and placing them in order.
It needs to use some temporary storage for this, as it cannot be done entirely in-place because
it must not overwrite elements in the sub-prtitions until they have been copied to the combined
partition.

## Complexity
The best, average, and worst case time complexity is always O(n*log(n)), as the work needed
does not depend on the data being sorted.


# BASIC code
Two arrays are being used as a stack for start- and end-indices to manage the boundaries
of the sub-divided partitions, in conjunction with GOSUB to handle the recursion.
The seemingly strange jump in line numbering to 550 is an optmization for the BASIC
interpreter to find the line number quicker.

Before the sort is started, the stack array is initialized with the start- and
end-indices of the entire array to be sorted: ```s(0)=1024:e(0)=1823:d=0```.

```basic
300 REM *******************************
301 REM *** merge sort              ***
302 REM *******************************
303 :
322 s=s(d):e=s+INT((e(d)-s)/2)
323 IF e>s THEN d=d+1:s(d)=s:e(d)=e:GOSUB 322:d=d-1
332 s=s(d):e=e(d):s=s+INT((e-s)/2)+1
333 IF e>s THEN d=d+1:s(d)=s:e(d)=e:GOSUB 322:d=d-1
335 :
343 s=s(d):e=e(d):m=s+INT((e-s)/2)
344 FOR x=s TO m:a(x-s)=PEEK(x):NEXT
345 :
350 x=0:u=m-s:y=m+1
351 FOR z=s TO e
352 IF a(x)<=PEEK(y)THEN POKE z,a(x):x=x+1:GOTO 550
353 IF PEEK(y)<a(x) THEN POKE z,PEEK(y):y=y+1
550 IF x>u OR y>e THEN m=z+1:z=e
551 NEXT
552 :
560 IF x<=u THEN FOR z=m TO e:POKE z,a(x):x=x+1:NEXT
598 RETURN
```
