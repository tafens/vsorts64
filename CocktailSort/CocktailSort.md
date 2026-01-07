# Cocktail Sort

## Description
The Cocktail shaker sort algorithm (or Cocktail sort) works like Bubble sort,
but alternates directions on each pass through the list. Liek Bubble sort, it
scans through the data multiple times, comparing adjacent elements and swapping
them if they are in the wrong order. Each pass places the next unsorted element
into its correct position at the end or at the start, depending on the current
direction. This process is repeated until a complete pass is made in any of the
directions without any swaps, indicating that the array is sorted.

## Complexity
The best and average case time complexity is O(n*n), but if the list is already
sorted, it only needs to make one pass to verify that, making the best case O(n).


# BASIC code
This implementation of Cocktail sort uses a further optimization in the variables
```Q``` and ```R``` to track the last position where a swap was made during either
pass. This allows the algorithm to reduce the range of the next pass further in some
circumstances than just excluding the last sorted element.

The outer FOR loop is used like a do/while-construct by manipulating the loop
variable inside the loop body to break out of the loop when the list is fully
sorted.

## Cocktail Sort
```basic
300 REM *******************************
301 REM *** cocktail sort           ***
302 REM *******************************
303 :
310 s=1024:e=1823:q=s:r=e-1
311 :
312 FOR z=0 TO 1 STEP 0
313 s=q:r=0:FOR y=s TO e-1
314 u=PEEK(y):w=PEEK(y+1)
315 IF u>w THEN POKE y,w:POKE y+1,u:r=y
316 NEXT
317 IF r=0 THEN z=1:GOTO 550
318 :
320 e=r:q=0:FOR y=e TO s STEP -1
321 u=PEEK(y-1):w=PEEK(y)
322 IF u>w THEN POKE y-1,w:POKE y,u:q=y
323 NEXT
324 IF q=0 THEN z=1
550 NEXT
551 :
560 RETURN
```
