<h1 align="center">Saint Charles Racing 🏎️💻</h1>
<p align="center"> Projeto da disciplina SSC0119 - Prática em Organização de Computadores. </p>

<p align="center">
  <a href="#estrutura-do-projeto">Estrutura do Projeto</a> • 
  <a href="#instalacao">Instalação</a> • 
  <a href="#uso">Uso</a> • 
  <a href="#pontos_importantes">Pontos importantes</a> •
  <a href="#processador">Processador</a> •
  <a href="#contribuindo">Contribuição</a> •
  <a href="#licenca">Licença</a> •
  <a href="#agradecimentos">Agradecimentos</a>
</p>

<p align="center">
   <img align="center" text-align="center" width="40%" style="margin-right:50px;" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/home.png">
   <img align="center" text-align="center" width="40%" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/game.png">
</p>

<p align="center">
Este projeto tem como objetivo implementar o jogo "St. Charles Racing", utilizando o Assembly do processador desenvolvido pelo professor Simões, no contexto da disciplina de Prática em Organização de Computadores. Além de codificar o jogo, foi projetada e implementada uma nova funcionalidade para o processador, ampliando suas capacidades e explorando os desafios do desenvolvimento em baixo nível. Este trabalho visa demonstrar a integração entre a criação de software para sistemas embarcados e a extensão de funcionalidades de hardware, proporcionando uma experiência prática em organização de computadores e programação em Assembly.
</p>

## <div id="estrutura-do-projeto"></div>Estrutura do Projeto

Abaixo está a estrutura do projeto com uma breve explicação do conteúdo de cada pasta:

- **imgs/**  
  Contém as imagens utilizadas no README para ilustrar e documentar o projeto.

- **assets/**  
  Armazena os arquivos `.asm` referentes ao personagem principal e aos inimigos do projeto.

- **src/**  
  Contém o arquivo `.asm` principal do projeto, onde está o código-fonte central.

- **tools/**  
  Guarda as ferramentas necessárias para o desenvolvimento e teste do projeto, incluindo o montador, o simulador e o charmap.
  

## <div id="instalacao"></div>Instalação

### **1. Clonar o Repositório**

Para obter o projeto em sua máquina, execute:  
```bash
git clone https://github.com/MatheusPaivaa/StCharles_Racing.git
cd StCharles_Racing
```

---

### **2. Utilizando o Makefile**

Abaixo estão os comandos disponíveis para compilar, executar e gerenciar o projeto:

- **Compilar o projeto**  
  Gera o arquivo `.mif` compilado.  
  ```bash
  make
  ```

- **Executar o simulador**  
  Roda o programa no simulador.  
  ```bash
  make run
  ```

- **Compilar e executar em modo de desenvolvimento**  
  Compila o código e executa o simulador.  
  ```bash
  make dev
  ```

- **Empacotar o projeto**  
  Cria um arquivo `.zip` com todos os arquivos do projeto.  
  ```bash
  make zip
  ```

- **Limpar os arquivos gerados**  
  Remove a pasta `bin/` e o arquivo `.zip`.  
  ```bash
  make clean
  ```

---

### **3. Pré-requisitos**

Certifique-se de ter o **Make**, montador e simulador configurados corretamente no ambiente. Para mais detalhes, consulte o repositório [Processador-ICMC](https://github.com/simoesusp/Processador-ICMC).

## <div id="uso"></div>Uso

### **Variáveis Principais**

- **dif**: `var #1`  
  Armazena a dificuldade do jogo, podendo ser ajustada para **1 (fácil)**, **2 (médio)** ou **3 (difícil)**.

- **posCarro**: `var #1`  
  Contém a posição atual do personagem principal.

- **posAntCarro**: `var #1`  
  Contém a posição anterior do personagem principal.

- **Inimigos**  
  Cada inimigo possui variáveis individuais para sua posição e velocidade:
  - **posInimigoX**: Contém a posição atual do inimigo X (onde X = 1, 2, 3, 4).  
  - **posAntInimigoX**: Contém a posição anterior do inimigo X.  
  - **velInimigoX**: Contém a velocidade do inimigo X.  

- **score**: `var #1`  
  Armazena a pontuação atual do jogador.

---

### **Código Principal**

1. **Tela Principal (`main`)**  
   A função principal do jogo realiza as seguintes ações:
   - Exibe a tela inicial com as opções:
     - **1**: Iniciar o jogo  
     - **2**: Configurar a dificuldade  
     - **3**: Sair  
   - Aguarda a entrada do usuário e direciona para a função correspondente.

---

### **Funções Importantes**

1. **`startGame`**  
   Inicia o jogo:
   - Apaga a tela principal e imprime o **mapa principal**.
   - Inicializa os inimigos e o personagem principal.  
   - Define os contadores de pontuação e velocidade.  
   - Entra no loop principal de controle do jogo:  
     - Move o personagem (com base na entrada do teclado).  
     - Move os inimigos verticalmente.  
     - Ajusta a pontuação e a dificuldade com o tempo.  
     - Detecta colisões.

2. **`inicializaInimigos`**  
   Configura a posição inicial e a velocidade dos 4 inimigos.

3. **`ajustarVelocidades`**  
   Ajusta a velocidade dos inimigos de acordo com a dificuldade escolhida pelo jogador.

4. **`MoveCarro`**  
   Controla o movimento do personagem principal.  
   - **`MoveCarro_RecalculaPos`**: Recalcula a posição do personagem com base na entrada de teclado ('a' para esquerda, 'd' para direita).  
   - Apaga a posição anterior e redesenha o personagem.

5. **`MoveInimigoX`**  
   Controla o movimento vertical de cada inimigo:
   - Move o inimigo para baixo.  
   - Quando o limite da tela é atingido, reposiciona o inimigo no topo.

6. **`DetectaColisao`**  
   Detecta colisões entre o personagem principal e os inimigos:
   - Utiliza vetores de sobreposição para verificar posições.

7. **`rotinaDerrota`**  
   Aciona a tela de derrota quando ocorre uma colisão:
   - Exibe a pontuação final.  
   - Permite reiniciar o jogo ou retornar ao menu principal.

8. **`config`**  
   Tela de configuração onde o jogador pode ajustar a dificuldade:  
   - **1**: Fácil  
   - **2**: Médio  
   - **3**: Difícil  
   - **4**: Voltar ao menu principal.

  <p align="center">
     <img align="center" text-align="center" width="40%" style="margin-right:50px;" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/config.png">
  </p>

9. **`ApagaTela`**  
   Apaga a tela atual.

10. **`prinTela`**  
    Imprime a tela com base em um mapa armazenado na memória.

11. **`PrintPontos` e `Pontua`**  
    Atualizam e imprimem a pontuação do jogador.

12. **`Delay`**  
    Adiciona um atraso para suavizar os movimentos no jogo.

---

### **Fluxo Geral do Jogo**

1. O jogador inicia o jogo na **tela principal** e escolhe uma das opções.
<p align="center">
   <img align="center" text-align="center" width="40%" style="margin-right:50px;" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/home.png">
</p>

2. Ao iniciar o jogo:
   - O personagem pode se mover horizontalmente usando **'a'** e **'d'**.  
   - Os inimigos descem verticalmente.  
   - A velocidade aumenta conforme a dificuldade e o tempo.  
3. O sistema detecta colisões entre o personagem e os inimigos. 

<p align="center">
   <img align="center" text-align="center" width="40%" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/game.png">
</p>

4. Caso ocorra uma colisão, o jogo exibe a **tela de derrota** com a pontuação final.  
5. O jogador pode reiniciar ou sair do jogo.

<p align="center">
   <img align="center" text-align="center" width="40%" style="margin-right:50px;" src="https://github.com/MatheusPaivaa/StCharles_Racing/blob/main/imgs/derrota.png">
</p>

## <div id="pontos_importantes"></div>Pontos importantes

Nesta seção, destacamos algumas informações essenciais sobre o desenvolvimento do projeto e as ferramentas utilizadas.

### **1. Criação dos Cenários**  
Para facilitar a criação dos cenários utilizados no jogo, foi utilizado o repositório **[Create-Screens-in-Assembly-with-Python](https://github.com/GustavoSelhorstMarconi/Create-Screens-in-Assembly-with-python)**, que permite gerar telas em Assembly por meio de scripts em Python.  

Essa ferramenta foi fundamental para agilizar o processo de construção e organização das telas, garantindo uma implementação eficiente e visualmente estruturada no código-fonte.

---

### **2. Funcionamento do Processador, Montador e Simulador**  
Todas as informações relacionadas ao processador utilizado no projeto, bem como seu montador e simulador, podem ser encontradas no repositório:  
**[Processador-ICMC](https://github.com/simoesusp/Processador-ICMC)**.

Este repositório fornece:  
- Detalhes sobre o funcionamento do processador.  
- Documentação completa do montador e do simulador.  
- Exemplos e instruções de uso para implementar e testar códigos Assembly.

---

Esses recursos foram essenciais para o desenvolvimento do jogo, fornecendo tanto ferramentas práticas para criação dos cenários quanto uma base sólida para a execução e teste do projeto.


## <div id="processador"></div>Processador

Em construção...

## <div id="video"></div>Vídeo de apresentação
Link: [Adicionar]

## <div id="contribuindo"></div>Contribuição
Contribuições são bem-vindas! Por favor, faça um fork do repositório e envie um pull request com suas alterações.

## <div id="licenca"></div>Licença
Este projeto está licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.

## <div id="acknowledgements"></div>Agradecimentos
Gostaríamos de agradecer a Eduardo Valle Simões, **o Poderoso**, pela sua orientação e apoio ao longo deste projeto.

## Alunos
- Matheus Paiva Angarola - **12560982** ([Github](https://github.com/MatheusPaivaa))
