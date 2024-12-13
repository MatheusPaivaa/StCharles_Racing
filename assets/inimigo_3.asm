inimigo_3Position : var #1

inimigo_3 : var #10
  static inimigo_3 + #0, #2088 ;    (
  static inimigo_3 + #1, #2929 ;    q
  static inimigo_3 + #2, #2089 ;    )
  ;39  espacos para o proximo caractere
  static inimigo_3 + #3, #2889 ;    I
  ;39  espacos para o proximo caractere
  static inimigo_3 + #4, #1799 ;    
  static inimigo_3 + #5, #2844 ;    
  static inimigo_3 + #6, #1813 ;    
  ;38  espacos para o proximo caractere
  static inimigo_3 + #7, #2088 ;    (
  static inimigo_3 + #8, #2930 ;    r
  static inimigo_3 + #9, #2089 ;    )

inimigo_3Gaps : var #10
  static inimigo_3Gaps + #0, #0
  static inimigo_3Gaps + #1, #0
  static inimigo_3Gaps + #2, #0
  static inimigo_3Gaps + #3, #38
  static inimigo_3Gaps + #4, #38
  static inimigo_3Gaps + #5, #0
  static inimigo_3Gaps + #6, #0
  static inimigo_3Gaps + #7, #37
  static inimigo_3Gaps + #8, #0
  static inimigo_3Gaps + #9, #0

printinimigo_3:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #inimigo_3
  loadn R1, #inimigo_3Gaps
  load R2, inimigo_3Position
  loadn R3, #10 ;tamanho inimigo_3
  loadn R4, #0 ;incremetador

  printinimigo_3Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printinimigo_3Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarinimigo_3:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #inimigo_3Gaps
  load R2, inimigo_3Position
  loadn R3, #10 ;tamanho inimigo_3
  loadn R4, #0 ;incremetador

  apagarinimigo_3Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarinimigo_3Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
