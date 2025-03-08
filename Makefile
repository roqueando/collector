init:
	source ~/zephyrproject/.venv/bin/activate && west update

build:
	@west build -b esp32c3_devkitm . -p always -Wno-dev
	@ln -s $(PWD)/build/compile_commands.json $(PWD)/compile_commands.json
.PHONY: init build
