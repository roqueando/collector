init:
	. ~/zephyrproject/.venv/bin/activate && west update

build:
	$(MAKE) init && west build -p always -b esp32c3_devkitm .
	$(MAKE) get_compile_commands

get_compile_commands:
	@if [ ! -f $(PWD)/compile_commands.json ]; then \
		ln -s $(PWD)/build/compile_commands.json $(PWD)/compile_commands.jsonl; \
	else \
		echo "compile_commands.json already exists moving on..."; \
	fi
.PHONY: init build get_compile_commands
