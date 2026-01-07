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

## GOTO and GOSUB
Lines in C64 BASIC V2 are numbered, but exists in a singly-linked list structure. The
line numbers consists of a high and a low byte, making up 16 bits, thus having a range
of 0-65535.

When jumping to a line number, the interpreter will search for the line by traversing
the list from the top until it finds the line with the destination number. This may
slow the program down if there are many jumps. There is however one exception; before
the search is started, the interpreter checks if the destination line number is larger
than the current line number by the high byte, and if it is, it will instead start
the serach from the current line instead. Thus a jump to a line at or larger than the
next multiple of 256 will be faster than a jump to a line before that.

```basic
10 REM basic will search through lines 10, 20, 30,
20 REM 40, 50, and then find and execute line 60
20 :
30 :
40 GOTO 60 
50 :
60 PRINT "hellorld!"
```

```basic
10 REM basic will now only search through lines
20 REM 40, 50, and then find and execute line 300
20 :
30 :
40 GOTO 300 
50 :
300 PRINT "hellorld!"
```


## Declaring variables
Variables do not need to be declared in C64 BASIC , they are created on first use
with an inital empty value of 0 for numeric variables and an empty string for string
variables. Arrays have a default length of 10.

To save space, variable names are only significant to the first two letters, and are
stored by the first two letters only. Thus longer variable names will not be unique
and slow down the interpreter. For example, the names "START", "STOP", and "STORE"
are all seen as the variable "ST", which is in fact a reserved name for the status
of the last I/O operation.

Further, the variables are stored lineraly in memory. In order to find a variable,
the interpreter scans all variables from first to last for a name match, and if not
found, it creates a new entry last. Threfore variables encountered later in the running
of the program will be slower to access. The search is performed by comparing the
letters of the name in turn, until the significant letters have been compared.
As soon a letter does not match, the search continues with the next variable.

Therefore, for speed, use single-letter variable names for the most used variables, 
and make sure they appear in the order of most accessed. If a variable is accessed
in a loop, each iteration of the loop will cause the variable to be accessed as
many times as it occurs inside the loop.
