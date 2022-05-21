package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	serv := http.Server{
		Addr: ":8080",
	}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello World")
	})

	log.Fatal(serv.ListenAndServe())
}
