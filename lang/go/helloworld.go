package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Printf("Hello, world (%d)!\n", net.IPv4len)
}
