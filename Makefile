default:
	go build -buildmode=c-shared -o ext/fibanachos.so ext/fibanachos.go
build:
	go build -buildmode=c-shared -o ext/fibanachos.so ext/fibanachos.go
clean:
install:

.PHONY: default 
