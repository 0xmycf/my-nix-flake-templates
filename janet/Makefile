.PHONY: all run clean install deps


all: build/project
	@echo "Build complete."

build/proj-name: *.janet
	@echo "Building the project..."
	jpm build --local

run: build/proj-name
	@./build/proj-name $(arg)

clean: 
	@echo "Cleaning up..."
	rm -rf build
	jpm clean --local
	@echo "Clean complete."

install: build/proj-name 
	@echo "Installing the project to '~/my-scripts/bin/proj-name'..."
	mv build/proj-name ~/my-scripts/bin/proj-name

build: build/proj-name

deps:
	@echo "Instsalling dependencies"
	jpm deps -l
