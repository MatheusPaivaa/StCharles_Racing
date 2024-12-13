CHARMAP=charmap
PROGRAMNAME=StCharlesRacing
BIN_DIR=bin
TOOLS_DIR=tools
SRC_DIR=src

# Caminhos para o montador e simulador
MONTADOR=$(TOOLS_DIR)/montador
SIMULADOR=$(TOOLS_DIR)/sim

# Arquivos de entrada e saída
ASM_FILE=$(SRC_DIR)/$(PROGRAMNAME).asm
MIF_FILE=$(BIN_DIR)/$(PROGRAMNAME).mif
CHARMAP_MIF=$(TOOLS_DIR)/$(CHARMAP).mif

# Regras principais
all: $(BIN_DIR) $(TOOLS_DIR) $(MIF_FILE)

run: $(BIN_DIR)
	$(SIMULADOR) $(MIF_FILE) $(CHARMAP_MIF)

zip:
	@zip -r $(PROGRAMNAME).zip *

dev: $(BIN_DIR)
	$(MONTADOR) $(ASM_FILE) $(MIF_FILE) && $(SIMULADOR) $(MIF_FILE) $(CHARMAP_MIF)

# Regras auxiliares
$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(TOOLS_DIR):
	@mkdir -p $(TOOLS_DIR)

$(MIF_FILE): $(ASM_FILE) | $(BIN_DIR)
	$(MONTADOR) $(ASM_FILE) $(MIF_FILE)

clean:
	@rm -rf $(BIN_DIR) $(PROGRAMNAME).zip

.PHONY: all run zip dev clean
