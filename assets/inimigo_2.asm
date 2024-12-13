inimigo_2Position : var #1

inimigo_2 : var #10
  static inimigo_2 + #0, #2088 ;    (
  static inimigo_2 + #1, #3185 ;    q
  static inimigo_2 + #2, #2089 ;    )
  ;39  espacos para o proximo caractere
  static inimigo_2 + #3, #3145 ;    I
  ;39  espacos para o proximo caractere
  static inimigo_2 + #4, #1031 ;    
  static inimigo_2 + #5, #3100 ;    
  static inimigo_2 + #6, #1045 ;    
  ;38  espacos para o proximo caractere
  static inimigo_2 + #7, #2088 ;    (
  static inimigo_2 + #8, #3186 ;    r
  static inimigo_2 + #9, #2089 ;    )

inimigo_2Gaps : var #10
  static inimigo_2Gaps + #0, #0
  static inimigo_2Gaps + #1, #0
  static inimigo_2Gaps + #2, #0
  static inimigo_2Gaps + #3, #38
  static inimigo_2Gaps + #4, #38
  static inimigo_2Gaps + #5, #0
  static inimigo_2Gaps + #6, #0
  static inimigo_2Gaps + #7, #37
  static inimigo_2Gaps + #8, #0
  static inimigo_2Gaps + #9, #0

printinimigo_2:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #inimigo_2
  loadn R1, #inimigo_2Gaps
  load R2, inimigo_2Position
  loadn R3, #10 ;tamanho inimigo_2
  loadn R4, #0 ;incremetador

  printinimigo_2Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printinimigo_2Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarinimigo_2:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #inimigo_2Gaps
  load R2, inimigo_2Position
  loadn R3, #10 ;tamanho inimigo_2
  loadn R4, #0 ;incremetador

  apagarinimigo_2Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarinimigo_2Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
