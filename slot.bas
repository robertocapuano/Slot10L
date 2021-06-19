0 SCREEN1,0,0:COLOR10,9,9:KEYOFF:DEFINTA-Z:B=6349:Z=RND(-TIME):CLS:M=10
1 dimSP(2,15):forI=0to15:A=RND(1)*3:forJ=0to2:SP(J,I)=A:nextJ,I
2 forI=0to6:forJ=0to6:vpoke6316+j+i*32,RND(1)*4+20:nextJ,I
3 forJ=0to2:forI=0to2:A=SP(J,(ST(J)+I)mod16)+1:vpokeB+64*I+J*2,A
4 R(J,I)=A:nextI,J:
5 CH=0:forJ=0to2:CK=(SR(J)>0):CH=CH+CK:SR(J)=SR(J)-1:
6 ST(J)=(ST(J)-CK*1)mod15:next:if CH<>0then:play"T120O4L15A":goto3
7 forK=0to2:ifR(0,K)=R(1,K)andR(1,K)=R(2,K)thenM=M+10:play"T120O4L60B"
8 nextK:LOCATE1,1:?"$";M;"  ":
9 K$=INKEY$:IFK$=""then9:elseM=M-1:forJ=0to2:SR(J)=RND(1)*15:nextJ:goto5

