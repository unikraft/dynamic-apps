package main

import (
	"fmt"
	"net"
)

func main() {
	// net.IPv4len is required to build a dynamic executable.
	// Otherwise, the Go compiler seems unable to build one,
	// only a static executable.
	fmt.Printf("Hello, world (%d)!\n", net.IPv4len)
}
