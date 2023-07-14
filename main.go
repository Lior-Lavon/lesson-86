package main

import (
	"fmt"
	"time"
)

func main() {
	for i := 0; i < 1000; i++ {
		fmt.Printf("Hello World : %d\n", i+1)
		time.Sleep(1 * time.Second)
	}
}
