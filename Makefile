# directories
SOURCE_DIR := scripts
INSTALL_DIR := ~/.ipython/profile_default/startup

# files
PYTHON_FILES := $(shell ls $(SOURCE_DIR)/*.py)
INSTALL_FILES := $(foreach file, $(notdir $(PYTHON_FILES)), $(INSTALL_DIR)/$(file))

# rules
.PHONY: help
help: 
	@echo "Usage: "
	@echo "  list: インストールするファイルのリストをプリントします．"
	@echo "  install: $(SOURCE_DIR)/ 以下にあるファイルを INSTALL_DIR($(INSTALL_DIR))以下にコピーします．"
	@echo "  uninstall: INSTALL_DIR($(INSTALL_DIR))/以下にあるファイルを削除します．"

.PHONY: list
list:
	@echo "=== src files ==="
	@echo $(PYTHON_FILE)
	@echo "=== dst files ==="
	@echo $(INSTALL_FILES)

.PHONY: install
install: $(PYTHON_FILES)
	cp $? $(INSTALL_DIR)/

.PHONY: uninstall
uninstall:
	rm -f $(INSTALL_FILES)
