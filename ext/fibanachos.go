package main

import "C"

//export fibanachos
func fibanachos(n uint) C.uint {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fibanachos(n-1) + fibanachos(n-2)
	}
}

// Required but ignored
func main() {} 
