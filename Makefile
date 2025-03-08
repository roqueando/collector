init:
	source ~/zephyrproject/.venv/bin/activate && west update

build:
	west build -b esp32c3_devkitm app
	ln -s $(PWD)/build/compile_commands.json $(PWD)/compile_commands.json
.PHONY: init
