# Selection Sort

## Description
The Selection sort algorithm divides the data into a sorted and an unsorted part,
initially with the sorted part being empty. In each iteration, it finds the minimum
element in the unsorted part and swaps it with the first unsorted element,
expanding the sorted part by one. This process continues until the entire
array is sorted.

## Complexity
The best, average, and worst case time complexity is always O(n*n), as the
complexity of the work needed does not depend on the data being sorted.


# BASIC code

```basic
300 REM *******************************
301 REM *** selection sort          ***
302 REM *******************************
303 :
310 e=1823
311 :
320 FOR x=1024 TO e-1
321 z=x:q=PEEK(x)
322 FOR y=x+1 TO e
323 IF PEEK(y)<q THEN z=y:q=PEEK(y)
324 NEXT
325 POKE z,PEEK(x):POKE x,q
326 NEXT
327 :
330 RETURN
```
