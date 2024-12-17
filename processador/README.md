<h1 align="center">Processador Implementado 💻</h1>
<p align="center"> Projeto da disciplina SSC0119 - Prática em Organização de Computadores. </p>

Este projeto consiste na **construção do hardware de um processador** utilizando a linguagem **VHDL** e implementado em uma **FPGA**. O objetivo principal foi projetar e sintetizar um processador funcional, validando seu comportamento por meio de testes em hardware.

## Etapas do Projeto

1. **Desenvolvimento em VHDL**  
   O processador foi modelado utilizando a linguagem de descrição de hardware **VHDL**. A maioria das modificações estão localizadas no arquivo **cpu.vhd** dentro da pasta DE0_CV (Modelo da FPGA).

2. **Implementação na FPGA**  
   A síntese do projeto foi realizada em uma **FPGA**, possibilitando a validação física e funcional do processador.

3. **Testes e Validação**  
   O processador foi testado utilizando o programa **TesteCPU.asm**, disponível neste repositório.  
   - O **TesteCPU.asm** verifica o funcionamento das principais instruções do processador, tais como:  
     - `loadn`, `load`, `store`, `storei`, `loadi`  
     - `mov`, `add`, `sub`, `mul`, `div`  
     - `inc`, `dec`, `and`, `or`, `xor`  
     - `cmp`, `jmp`, `call`, `rts`, `push`, `pop`  

   O programa foi projetado para avaliar se cada instrução é corretamente implementada e executada na FPGA.  

---

## Resultado Final

O processador foi desenvolvido com sucesso e implementado na FPGA. Seu funcionamento foi validado por meio do **TesteCPU.asm**, que testou uma série de instruções, garantindo o comportamento esperado.

[Colocar imagem]