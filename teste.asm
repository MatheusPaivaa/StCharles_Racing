jmp main

; Secao de declaracao de variaveis GLOBAIS
; R0 -> Pontos
; R5 -> ParametroPrint
; R6 -> ParametroPrint

; Codigo principal
main:
    call InitPontuacao
    
loop:
    call PrintPontos
    call IncrementaPontos
    call Delay
    jmp loop
    
; Funcoes

InitPontuacao:    ; Inicializa o registrador de Pontos
    Loadn R0, #0  ; Pontos
    RTS           ; return

; --------------------------

Pontua: 
    call PrintPontos
    call IncrementaPontos
    rts

PrintPontos:
    ; Printa os pontos
    Mov R5, R0
    Loadn R6, #46
    call PrintR5R6 ; r5=numero - r6=posicao
    RTS

; --------------------------

IncrementaPontos:
    Inc R0        ; Pontos++
    RTS           ; return

; --------------------------

Delay:
    ; Utiliza Push e Pop para nao afetar os registradores do programa principal
    Push R0
    Push R1
    
    Loadn R1, #15000  ; Ajuste aqui para modificar o tempo do delay
Delay_volta2:              
    Loadn R0, #3000 ; Ajuste aqui para modificar o tempo do delay
Delay_volta:
    Dec R0
    JNZ Delay_volta    
    Dec R1
    JNZ Delay_volta2
    
    Pop R1
    Pop R0
    
    RTS           ; return

; --------------------------

PrintR5R6:    ; R5 contem um numero de ate' 2 digitos e R6 a posicao onde vai imprimir na tela
    Push R0
    Push R1
    Push R2
    Push R3
    
    Loadn R0, #10
    Loadn R2, #48
    
    Div R1, R5, R0    ; Divide o numero por 10 para imprimir a dezena
    
    Add R3, R1, R2    ; Soma 48 ao numero pra dar o Cod. ASCII do numero
    Outchar R3, R6
    
    Inc R6            ; Incrementa a posicao na tela
    
    Mul R1, R1, R0    ; Multiplica a dezena por 10
    Sub R1, R5, R1    ; Para subtrair do numero e pegar o resto
    
    Add R1, R1, R2    ; Soma 48 ao numero pra dar o Cod. ASCII do numero
    Outchar R1, R6
    
    Pop R3
    Pop R2
    Pop R1
    Pop R0
    
    RTS
