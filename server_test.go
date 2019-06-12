package main

import "testing"

func TestMessage(t *testing.T) {
    msg := message()
    if msg != "Hello Worlddddd" {
       t.Errorf("Message was incorrect, got: %s, want: %s.", msg, "Hello World")
    }
}