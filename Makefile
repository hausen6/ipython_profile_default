# directories
CURRENT_DIR = $(abspath ./)
INSTALL_DIR = $(HOME)/.ipython/profile_default

# files
SOURCE_FILES = $(wildcard ??*)
EXCLUDE_FILES = Makefile .gitignore
TARGET_FILES = $(filter-out $(EXCLUDE_FILES), $(SOURCE_FILES))
TARGETS = $(foreach file, $(TARGET_FILES), $(addprefix $(CURRENT_DIR)/, $(file)))

# rules
.PHONY: install
install: $(INSTALL_DIR)/
	@$(foreach file, $(TARGETS), ln -snvf $(file) $(INSTALL_DIR)/$(notdir $(file));)

$(INSTALL_DIR)/:
	mkdir -p $@
