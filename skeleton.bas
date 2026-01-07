
start tok64 skeleton.prg
1 REM *********************************
2 REM ***                           ***
3 REM *** <algorithm>    visualized ***
4 REM ***                           ***
5 REM ***                           ***
6 REM *** by <name>       in <year> ***
7 REM *** released under gnu gpl v3 ***
8 REM *********************************
9 :
100 GOSUB 900:GOSUB 800       :REM init
101 t=ti:GOSUB 300:t=ti-t     :REM sort
102 GOSUB 950:END             :REM done
199 :
300 REM *******************************
301 REM *** <algorithm> sort        ***
302 REM *******************************
303 :
310 REM <algorithm sorting 1024-1823>
311 :
390 RETURN
399 :
800 REM *******************************
801 REM *** init / setup            ***
802 REM *******************************
803 :
810 REM <variable/array declarations>
811 :
850 x$="{right*7}":y$="{right*11}"
851 PRINT "{home}{down*21}";
852 PRINT x$;"algorithm: ";
853 PRINT "<algorithm> sort"
854 PRINT y$;"worst: o(<complexity>)"
855 PRINT y$;" best: o(<complexity>)"
856 :
860 RETURN
899 :
900 REM *******************************
901 REM *** initiate / randomize    ***
902 REM *******************************
903 :
910 REM --- colors / title ------------
911 :
912 PRINT "{gray}":POKE 53280,9:POKE 53281,0
913 PRINT "{clear}{down*21}";
914 PRINT "{right*5}visualized sorts ";
915 PRINT "in c64 basic:"
916 PRINT "{right*3}https://github.com/";
917 PRINT "tafens/vsorts64/"
919 :
920 REM --- randomize data ------------
921 :
922 FOR x=1024 TO 1823
923 y=RND(1)*36+1:IF y>=27 THEN y=y+21
924 IF RND(1)>.5 THEN y=y+128
925 POKE x,y
926 NEXT
927 :
930 REM --- clear title ---------------
931 :
932 x$="{space*19}"
933 PRINT "{home}{down*21}";
934 PRINT x$;x$:PRINT x$;x$
935 :
940 RETURN
941 :
950 REM *******************************
951 REM *** finalize                ***
952 REM *******************************
953 :
960 REM --- total sort time -----------
961 :
962 PRINT "{up*3}{left}";t:POKE 53280,11
963 :
970 RETURN
998 :
999 REM *******************************
stop tok64
(bastext 1.1)
