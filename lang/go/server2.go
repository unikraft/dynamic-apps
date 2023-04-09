package main

import (
	"fmt"
)

const (
	CONN_HOST = ""
	CONN_PORT = "3333"
	CONN_TYPE = "tcp"
)

func main() {
	// Listen for incoming connections.
	//l, err := net.Listen(CONN_TYPE, CONN_HOST+":"+CONN_PORT)
	fmt.Println("Listening on " + CONN_HOST + ":" + CONN_PORT)
}
