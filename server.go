package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

const (
	host     = "localhost"
	port     = 5432
	user     = "postgres"
	password = "postgres"
	dbname   = "demo_circleci"
)

var db *sql.DB

type userStruct struct {
	Id    int    `json:"id,omitempty"`
	Name  string `json:"name,omitempty"`
	Email string `json:"email,omitempty"`
}

func print(w http.ResponseWriter, r *http.Request) {
	msg := message()
	fmt.Fprintf(w, msg)
}

func message() string {
	return "Hello World"
}

func UserInfo(w http.ResponseWriter, r *http.Request) {

	sqlStatement := "SELECT id,nama,email FROM public.\"User\" WHERE id=$1"
	var nama string
	var email string
	var id int
	var data userStruct
	params := mux.Vars(r)
	row := db.QueryRow(sqlStatement, params["id"])

	err := row.Scan(&id, &nama, &email)
	if err != nil {
		if err == sql.ErrNoRows {
			fmt.Println("Zero rows found")
		} else {
			panic(err)
		}
	} else {
		data = userStruct{Id: id, Name: nama, Email: email}
	}
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	json.NewEncoder(w).Encode(data)
}

func connectDB() *sql.DB {
	var err error
	psqlInfo := fmt.Sprintf("host=%s port=%d user=%s "+
		"password=%s dbname=%s sslmode=disable",
		host, port, user, password, dbname)
	db, err = sql.Open("postgres", psqlInfo)
	if err != nil {
		panic(err)
	}
	//defer db.Close()

	err = db.Ping()
	if err != nil {
		panic(err)
	}
	fmt.Println("Successfully connected!", db)
	return db

}

func main() {
	connectDB()
	r := mux.NewRouter()
	r.HandleFunc("/", print)
	r.HandleFunc("/user/{id:[0-9]+}", UserInfo)
	http.Handle("/", r)
	//fmt.Println("DB: ", db)
	fmt.Println("Starting server")
	http.ListenAndServe(":3500", nil)
}
