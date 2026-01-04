# Visual Sorts 64

Visual Sorts 64 is a collection of demonstration programs written in Commodore C64 BASIC,
visualizing different sorting algorithms by sorting directly on screen in real time.

## Idea and goal
The idea and goal with these demostration programs is to show how the algorithms moves
data around, and to be reasonably clear to read and understand within the limitiations
of the BASIC language as it is on the Commodore C64.

A sorting algorithm can be a complex piece of code to understand fully. Visualizing how
it moves around the data being sorted can help in understanding how it works and especially
how different algorithms work compared to each other, and why some are more efficient than
others.


# Programs

The demonstration programs are all based on a common base, which presents the algorithm with
some information about its complexity (big-O notation for worst and best case), and fills the
screen memory with random data A-Z, 1-9, regular and inverted, 800 data points in total.

When the algorithm is done, the border changes color and the total time of the actual sort
is displayed in "jiffies" (1/60s of a second) together with the familiar READY-prompt.

The displayed time is there to give an idea of the relative speed of the algorithms,
and should not be taken as an absolute measure of performance, as the algorithms will
be somewhat affected by the BASIC implementation, having to use PEEK/POKE to move
data around visually on screen and so on.

It is important to note that algorithms that are close in performance may place in a different
order relative to each other when being implemented on another platform or in another language
due to the possibilities and limitations of each specific environment and language.

## Running the programs
To run the programs, you need a real Commodore C64 or an emulator.
LOAD the prg-file and RUN: LIST, tinker and have fun!

If using an emulator, most will support dropping the file on it to load. Id must be noted
that an emulator is highly recommended, as without some form of warp-mode watching some of
these algorithmd will be incredibly tedious.

## Hall of Fame
The times in the table are based on averages of multiple runs on random data, and may
vary, but the relative order should be fairly stable when the algorithms are far enough
apart in realtive speed.

Note, however, that these are the times as implemented here and other implementations may
differ. Also, the randomness of the data may have resulted in more or less advantageous
runs for one or more of the algorithms during the timing. As such, the times and relative
speeds are not to be taken as a general rule for comparison.

| Place* | Jiffies** | Relative** | Algorithm      | Implementation details |
|:-------|:----------|:-----------|:---------------|:-----------------------|
|        |           |            | Quick Sort H   | Stack-based iterative; Hoare partitioning |
|        |           |            | Quick Sort L   | Stack-based iterative; Lomuto partitioning |
|        |           |            | Comb Sort      | Iterative |
|        |           |            | Heap Sort      | Iterative |
|        |           |            | Merge Sort     | Recursive (GOSUB) |
|        |           |            | Selection Sort | Iterative |
|        |           |            | Insertion Sort | Iterative |
|        |           |            | Bubble Sort    | Iterative |
|        |           |            | Bi-Bubble Sort | Iterative (bidirectional) |

\*) When the times are reasonably close, algorithms are grouped in the same place.<br/>
\**) Jiffies and relative speed are based on averages of multiple runs on random data.

## Further reading
For more details about the algorithms, this article on Wikipedia is a good starting point,
and contains links to more in-depth information about each algorithm:

https://en.wikipedia.org/wiki/Sorting_algorithm


# Contributing

If you want to contribute with more sorting algorithms, please feel free to submit a pull-request
with your implementation or variant. A skeleton demonstration program is provided in the repository 
so only the sorting algorithm itself needs to be implemented.

Keep in mind that the goal is to visualize the sorting process in a reasonably readable and clear
way, given the limitations of the BASIC language on the Commodore C64.