# Comb Sort

## Description
The Comb sort algorithm works like a Bubble sort by comparing and swapping elements, but
uses a gap that starts large and shrinks each pass until it is down to 1, by which time it
behaves exactly like a Bubble sort.

The advantage by using a gap is that elements initially far from their final position will
move by large distances quickly when the gap is large. The gap starts out as the size of the
array divided by the shrink factor (typically 1.3), and it then shrinks by that factor each
pass until it reaches 1. It then continues with a gap of 1 until no more swaps have been made
in the last pass, at which time the array is fully sorted.

## Complexity
The best case time complexity is O(n*log(n)), on average O(n^2^/2^p^) where p is the number
of gap distances used, and the worst-case is O(n^2^), like Bubble sort. Howerver, it is
remarkably fast given it simplicity, and seems to perform close to the best case more
often than not.


# BASIC code
The outer FOR loop is used like a do/while-construct by manipulating the loop variable
inside the loop body to break out of the loop when the list is fully sorted.

```basic
300 REM *******************************
301 REM *** comb sort               ***
302 REM *******************************
303 :
310 g=800:f=1.3
311 :
312 FOR q=0 TO 1 STEP 0
313 s=0:IF g>1 THEN g=INT(g/f)
314 FOR x=1024 TO 1823-g
315 y=x+g:u=PEEK(x):w=PEEK(y)
316 IF u>w THEN POKE x,w:POKE y,u:s=1
317 NEXT
318 IF s=0 THEN IF g=1 THEN q=1
319 NEXT
320 :
330 RETURN
```
