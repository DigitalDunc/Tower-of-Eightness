

10 MAXITER=20
20 LET C$=" .,'~!^:;[/<&?oxOX#  "
30 FOR Y=-39 TO 39
40 FOR X=-79 TO 79
50 CREAL=X/40
70 CIMAG=Y/20
80 ZREAL = CREAL
90 ZIMAG = CIMAG
95 COUNT = 1
100 ZM = ZREAL*ZREAL
105 ZN = ZIMAG*ZIMAG
107 ZL = ZM+ZN
110 IF ZL>4 THEN GOTO 170
120 ZR2=ZM-ZN+CREAL
130 ZIMAG=ZREAL*ZIMAG*2+CIMAG
140 ZREAL=ZR2
150 COUNT=COUNT+1
160 IF COUNT<MAXITER THEN GOTO 100
170 PAPER = COUNT : GOSUB 1060
175 PRINT " ";
180 NEXT X
185 PAPER = 0 : GOSUB 1060: PRINT ""
190 NEXT Y
200 PAPER = 0: GOSUB 3010
210 END
1000 REM Ink Colour
1010 LET INK$=STR$(INK)
1020 PRINT CHR$(27)+"[38;5;";RIGHT$(INK$,LEN(INK$)-1);"m";
1030 RETURN
1050 REM Paper Colour
1060 PAPER$=STR$(PAPER)
1070 PRINT CHR$(27)+"[48;5;"+RIGHT$(PAPER$,LEN(PAPER$)-1)+"m";
1080 RETURN
1100 REM Move Row - Col
1110 LET ROW$=STR$(ROW):LET COL$=STR$(COL)
1120 PRINT CHR$(27)+"[";RIGHT$(ROW$,LEN(ROW$)-1);";";
1130 PRINT RIGHT$(COL$,LEN(COL$)-1);"H";
1140 RETURN
2000 REM Draw Line
2010 XO$=STR$(XO):XI$=STR$(XI):YO$=STR$(YO):YI$=STR$(YI)
2020 PRINT CHR$(27)+"[?#"+RIGHT$(XO$,LEN(XO$)-1)+";";
2025 PRINT RIGHT$(XI$,LEN(XI$)-1)+";";
2030 PRINT RIGHT$(YO$,LEN(YO$)-1)+";";
2035 PRINT RIGHT$(YI$,LEN(YI$)-1);"L";
2040 RETURN
3000 REM Reset to default
3010 PRINT CHR$(27);CHR$(91);CHR$(48);CHR$(109)
3020 RETURN

Ready
