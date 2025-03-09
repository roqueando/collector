init:
	. ~/zephyrproject/.venv/bin/activate && west update

build:
	$(MAKE) init && west build -p always -b esp32c3_devkitm .
	$(MAKE) get_compile_commands

flash:
	# TODO: change this to a env var
	west flash --esp-device /dev/ttyACM0

get_compile_commands:
	@if [ ! -f $(PWD)/compile_commands.json ]; then \
		ln -s $(PWD)/build/compile_commands.json $(PWD)/compile_commands.jsonl; \
	else \
		echo "compile_commands.json already exists moving on..."; \
	fi
.PHONY: init build get_compile_commands
