inimigo_4Position : var #1

inimigo_4 : var #10
  static inimigo_4 + #0, #2088 ;    (
  static inimigo_4 + #1, #1393 ;    q
  static inimigo_4 + #2, #2089 ;    )
  ;39  espacos para o proximo caractere
  static inimigo_4 + #3, #1353 ;    I
  ;39  espacos para o proximo caractere
  static inimigo_4 + #4, #1799 ;    
  static inimigo_4 + #5, #1308 ;    
  static inimigo_4 + #6, #1813 ;    
  ;38  espacos para o proximo caractere
  static inimigo_4 + #7, #2088 ;    (
  static inimigo_4 + #8, #1394 ;    r
  static inimigo_4 + #9, #2089 ;    )

inimigo_4Gaps : var #10
  static inimigo_4Gaps + #0, #0
  static inimigo_4Gaps + #1, #0
  static inimigo_4Gaps + #2, #0
  static inimigo_4Gaps + #3, #38
  static inimigo_4Gaps + #4, #38
  static inimigo_4Gaps + #5, #0
  static inimigo_4Gaps + #6, #0
  static inimigo_4Gaps + #7, #37
  static inimigo_4Gaps + #8, #0
  static inimigo_4Gaps + #9, #0

printinimigo_4:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #inimigo_4
  loadn R1, #inimigo_4Gaps
  load R2, inimigo_4Position
  loadn R3, #10 ;tamanho inimigo_4
  loadn R4, #0 ;incremetador

  printinimigo_4Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printinimigo_4Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarinimigo_4:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #inimigo_4Gaps
  load R2, inimigo_4Position
  loadn R3, #10 ;tamanho inimigo_4
  loadn R4, #0 ;incremetador

  apagarinimigo_4Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarinimigo_4Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
