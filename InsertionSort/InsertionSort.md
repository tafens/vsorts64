# Insertion Sort

## Description
The Insertion sort algorithm divides the data into a sorted and an unsorted part,
and builds the sorted part one element at a time by taking each unsorted element
and inserting it into its correct position within the sorted part. To make room,
it shifts the elements to the right as needed. This continues until all elements
are sorted.

## Complexity
The best, average, and worst case time complexity is always O(n*n), as the
complexity of the work needed does not depend on the data being sorted,
although on already or nearly sorted data it performs better due to fewer
inserions and shifts needed.


# BASIC code

```basic
300 REM *******************************
301 REM *** insertion sort          ***
302 REM *******************************
303 :
310 w=1024
311 :
312 FOR x=w+1 TO 1823
313 z=x:q=PEEK(x)
314 FOR y=x-1 TO w STEP -1
315 u=PEEK(y)
316 IF u<=q THEN z=y+1:y=w:GOTO 550
317 IF y=w THEN z=y:GOTO 550
318 POKE y+1,u
550 NEXT
551 POKE z,q
552 NEXT
553 :
590 RETURN
```
