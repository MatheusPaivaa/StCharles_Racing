perso_principalPosition : var #1

perso_principal : var #10
  static perso_principal + #0, #2139 ;     [
  static perso_principal + #1, #539 ;     
  static perso_principal + #2, #2141 ;     ]
  ;38  espacos para o proximo caractere
  static perso_principal + #3, #3591 ;     
  static perso_principal + #4, #2588 ;     
  static perso_principal + #5, #3614 ;     
  ;39  espacos para o proximo caractere
  static perso_principal + #6, #585 ;     I
  ;39  espacos para o proximo caractere
  static perso_principal + #7, #2139 ;     [
  static perso_principal + #8, #797 ;     
  static perso_principal + #9, #2141 ;     ]

perso_principalGaps : var #10
  static perso_principalGaps + #0, #0
  static perso_principalGaps + #1, #0
  static perso_principalGaps + #2, #0
  static perso_principalGaps + #3, #37
  static perso_principalGaps + #4, #0
  static perso_principalGaps + #5, #0
  static perso_principalGaps + #6, #38
  static perso_principalGaps + #7, #38
  static perso_principalGaps + #8, #0
  static perso_principalGaps + #9, #0

printperso_principal:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #perso_principal
  loadn R1, #perso_principalGaps
  load R2, perso_principalPosition
  loadn R3, #10 ;tamanho perso_principal
  loadn R4, #0 ;incremetador

  printperso_principalLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printperso_principalLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarperso_principal:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #perso_principalGaps
  load R2, perso_principalPosition
  loadn R3, #10 ;tamanho perso_principal
  loadn R4, #0 ;incremetador

  apagarperso_principalLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarperso_principalLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
