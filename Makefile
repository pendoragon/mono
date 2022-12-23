TARGETS ?= app1 app2
ARCH ?= amd64

OUTPUT_DIR ?= ./output

.PHONY: build-linux
build-linux:
	@for target in $(TARGETS);do                         \
		cd apps/$${target} && GOOS=linux GOARCH=${ARCH}      \
    go build -o ../../${OUTPUT_DIR}/$${target} . &&    \
	  cd -;                                              \
	done
