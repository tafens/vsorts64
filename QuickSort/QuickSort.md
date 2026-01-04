# Quick Sort

## Description
The quick sort algorithm selects a pivot element and partitions the array so that all smaller
elements are on one side and larger elements on the other. It then recursively applies the
same process to each partition until all partitions contain single elements, and then the
array is sorted.

## Complexity
The best and average time complexity is O(n*log(n)), though it can degenerate to a worst-case
of O(n^2) if the choosen pivot is consistently bad and results in severly unbalanced partitions.


# BASIC code
Both implementations are iterative and use two arrays as a stack for start- and end-indices
to manage the boundaries of the sub-divided partitions.
Some FOR loops are used more like do/while-constructs by manipulating the loop variable
inside the loop body to keep running or breaking out of the loop when needed.

## Lomuto Quick Sort
Lomuto partitioning uses two pointers starting at the beginning, one always incrementing
and the other only if the element it is pointing at is less or equal to the pivot, in which
case the values at each are also swapped. When the first pointer reaches the end, the pivot
is swapped into its correct position.

```basic
300 REM *******************************
301 REM *** lomuto quick sort       ***
302 REM *******************************
303 :
310 s(0)=1024:e(0)=1823
311 :
312 FOR d=0 TO 0 STEP -1
313 s=s(d):e=e(d):p=PEEK(e):y=s
314 FOR x=s TO e-1
315 u=PEEK(x):w=PEEK(y)
316 IF u<=p THEN POKE x,w:POKE y,u:y=y+1
317 NEXT
318 w=PEEK(y):POKE y,p:POKE e,w
321 :
323 IF e>y+1 THEN s(d)=y+1:e(d)=e:d=d+1
333 IF y-1>s THEN s(d)=s:e(d)=y-1:d=d+1
334 NEXT
335 :
336 RETURN
```

## Hoare Quick Sort
Hoare partitioning uses two pointers starting from opposite ends that move toward each other,
swapping elements until they meet so that all elements less than the pivot are on one side
and all elements greater than or equal to the pivot are on the other.

```basic
300 REM *******************************
301 REM *** hoare quick sort        ***
302 REM *******************************
303 :
310 s(0)=1024:e(0)=1823
311 :
312 FOR d=0 TO 0 STEP -1
313 s=s(d):e=e(d):x=s-1:y=e+1:p=PEEK(s)
320 :
321 FOR z=0 TO 1 STEP 0
323 x=x+1:FOR q=x TO e
324 IF PEEK(q)>=p THEN x=q:q=e
325 NEXT
331 y=y-1:FOR q=y TO s STEP -1
332 IF PEEK(q)<=p THEN y=q:q=s
333 NEXT
335 IF x>=y THEN z=1:GOTO 550
336 u=PEEK(x):POKE x,PEEK(y):POKE y,u
550 NEXT
551 :
552 IF e>y+1 THEN s(d)=y+1:e(d)=e:d=d+1
553 IF y>s THEN s(d)=s:e(d)=y:d=d+1
554 NEXT
555 :
598 RETURN
```
