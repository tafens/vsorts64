# Notes on Commodore C64 BASIC V2

## FOR/NEXT loops
In C64 BASIC V2, the FOR statement calculates the start and end values before the loop
starts and the NEXT statement checks if the loop variable currently is at the end value.
If it is not at the end value, the STEP-value is added and the loop continues from the top.
If it is at the end value, execution instead continues directly after the NEXT-statement without adding the STEP-value. 

As an effect of this logic, a FOR loop will run at least one iteration regardless of its start and end values.

```basic
10 REM print "hellorld" once
20 FOR q=0 TO 0
30 PRINT "hellorld!"
40 NEXT
```

```basic
10 REM infinite loop
20 FOR q=0 TO 1 STEP 0
30 NEXT
```

```basic
10 REM loop until user inputs "quit"
20 FOR q=0 TO 1 STEP 0
30 INPUT a$:IF a$="quit" THEN q=1
40 NEXT
```
