package main

import (
	"fmt"
	"time"
)

func main() {
	count := 0
	for {
		date := time.Now()
		fmt.Printf("Now going with serious standard log @ %s and count of this message is %d\n", date, count)
		count = count+1
	}
}