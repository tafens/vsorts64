# Heap Sort

## Description
The Heap sort algorithm works in two steps; it first reorders the data to a max-heap,
where each parent node is greater than its children. The node indices are used as
their parent/child structure by the formulas: ```leftchild = 2*i+1 ``` and
```rightchild = 2*1+2``` (where the parent node index is i). The very first element
in the data is the root node.

It then repeatedly extracts the maximum element (the root) by swapping it to the end
of the array and reducing the heap size. After each extraction, as the heap is broken
by moving elements, it restores the heap by "sifting down" the new root, continuing
until the heap is empty and all elements are sorted.

## Complexity
The best, average, and worst case time complexity is always O(n*log(n)), as the
complexity of the work needed does not depend on the data being sorted.


# BASIC code
As the code combines the two steps of the algorithm, the outer FOR loop is used like
a do/while-construct by manipulating the loop variable inside the loop body to break
out of the loop when the list is fully sorted (the loop variable is only incremented
during the sorting phase). The inner FOR-loop is also used like a do/while-construct
sifting down until the heap is restored.

```basic
300 REM *******************************
301 REM *** heap sort               ***
302 REM *******************************
303 :
310 k=1024:e=1824:s=k+INT((e-k)/2)
311 :
320 FOR e=e TO k+1 STEP 0
321 IF s>k THEN s=s-1:GOTO 550
322 e=e-1:u=PEEK(k):POKE k,PEEK(e):POKE e,u
323 :
550 r=s:FOR q=0 TO 1 STEP 0
551 c=2*r+1-k:IF c>=e THEN q=1:GOTO 770
552 IF c+1<e THEN IF PEEK(c)<PEEK(c+1) THEN c=c+1
553 IF PEEK(r)>=PEEK(c) THEN q=1:GOTO 770
554 u=PEEK(r):POKE r,PEEK(c):POKE c,u:r=c
770 NEXT
771 NEXT
772 :
790 RETURN
```
