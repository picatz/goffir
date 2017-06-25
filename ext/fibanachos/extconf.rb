require 'mkmf'
find_executable('go')

create_makefile("fibanachos/fibanachos")

File.open('Makefile', 'a') do |f|
  f.write("build:\n\tgo build -buildmode=c-shared -o ext/fibanachos/fibanachos.so ext/fibanachos/fibanachos.go")
  f.write("clean:\ninstall:\n\n.PHONY: build")
end
