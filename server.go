package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Here be dragons!")
}

func main() {
	http.HandleFunc("/healthz", handler)
	fmt.Println("Server running...")
	http.ListenAndServe(":8080", nil)
}
