inimigo_1Position : var #1

inimigo_1 : var #10
  static inimigo_1 + #0, #2088 ;    (
  static inimigo_1 + #1, #369 ;    q
  static inimigo_1 + #2, #2089 ;    )
  ;39  espacos para o proximo caractere
  static inimigo_1 + #3, #329 ;    I
  ;39  espacos para o proximo caractere
  static inimigo_1 + #4, #263 ;    
  static inimigo_1 + #5, #284 ;    
  static inimigo_1 + #6, #277 ;    
  ;38  espacos para o proximo caractere
  static inimigo_1 + #7, #2088 ;    (
  static inimigo_1 + #8, #370 ;    r
  static inimigo_1 + #9, #2089 ;    )

inimigo_1Gaps : var #10
  static inimigo_1Gaps + #0, #0
  static inimigo_1Gaps + #1, #0
  static inimigo_1Gaps + #2, #0
  static inimigo_1Gaps + #3, #38
  static inimigo_1Gaps + #4, #38
  static inimigo_1Gaps + #5, #0
  static inimigo_1Gaps + #6, #0
  static inimigo_1Gaps + #7, #37
  static inimigo_1Gaps + #8, #0
  static inimigo_1Gaps + #9, #0

printinimigo_1:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #inimigo_1
  loadn R1, #inimigo_1Gaps
  load R2, inimigo_1Position
  loadn R3, #10 ;tamanho inimigo_1
  loadn R4, #0 ;incremetador

  printinimigo_1Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printinimigo_1Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarinimigo_1:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #inimigo_1Gaps
  load R2, inimigo_1Position
  loadn R3, #10 ;tamanho inimigo_1
  loadn R4, #0 ;incremetador

  apagarinimigo_1Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarinimigo_1Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
