package main
import (
"fmt"
"net/http"
)
func print(w http.ResponseWriter, r *http.Request){
    msg := message()
    fmt.Fprintf(w, msg)
    //return message
}

func message() (string){
	return "Hello World"
}

func main() {
    http.HandleFunc("/", print)
    http.ListenAndServe(":8080", nil)
}