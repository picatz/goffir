require 'mkmf'
find_executable('go')

create_makefile("fibanachos")

File.open('Makefile', 'a') do |f|
  f.write("default:\n\tgo build -buildmode=c-shared -o ext/fibanachos.so ext/fibanachos.go\n")
  f.write("clean:\ninstall:\n\n.PHONY: default")
end
