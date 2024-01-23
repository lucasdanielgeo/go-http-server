package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/lucasdanielgeo/go-http-server/utils"
)

type User struct {
	ID   int    `json:"id"`
	Name string `json:"name"`
}

func main() {
	users := []User{{ID: 1, Name: "Lucas Daniel"}}
	object, err := json.Marshal(users)

	if err != nil {
		log.Fatal(err)
	}

	http.HandleFunc("/users", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, string(object))
	})

	fmt.Println("Server listening on :3000...")

	http.ListenAndServe(":3000", nil)
}
