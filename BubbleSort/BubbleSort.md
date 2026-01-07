# Bubble Sort

## Description
The Bubble sort algorithm scans through the data multiple times, comparing
adjacent elements and swapping them if they are in the wrong order. Each pass
places the next largest unsorted element into its correct position at the end.
This process is repeated until a complete pass is made without any swaps,
indicating that the array is sorted.

## Complexity
The best and average case time complexity is O(n*n), but if the list is already
sorted, it only needs to make one pass to verify that, making the best case O(n).


# BASIC code

## Bubble Sort
This implementation of Bubble sort uses a further optimization in the variable
```Q``` to track the last position where a swap was made during a pass.
This allows the algorithm to reduce the range of the next pass further in some
circumstances than just excluding the last sorted element.

The outer FOR loop is used like a do/while-construct by manipulating the loop
variable inside the loop body to break out of the loop when the list is fully
sorted.

```basic
300 REM *******************************
301 REM *** bubble sort             ***
302 REM *******************************
303 :
310 s=1024:e=1823:q=e-1
311 :
312 FOR z=0 TO 1 STEP 0
313 e=q:q=0:FOR y=s TO e
314 u=PEEK(y):w=PEEK(y+1)
315 IF u>w THEN POKE y,w:POKE y+1,u:q=y
316 NEXT
317 IF q=0 THEN z=1
318 NEXT
319 :
320 RETURN
```
