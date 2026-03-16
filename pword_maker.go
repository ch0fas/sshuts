package main

import (
	"crypto/rand"
	"flag"
	"fmt"
	"math/big"
	"os"
	"strings"
)

func gen_password(length int, available_chars string) string {
	var builder strings.Builder
	for range length {
		n, err := rand.Int(rand.Reader, big.NewInt(int64(len(available_chars))))
		if err != nil {
			panic(err)
		}
		builder.WriteByte(available_chars[n.Int64()])
	}

	pword := builder.String()

	return pword
}

func main() {
	var available_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	var SPECIAL_CHARS = "!#$%&()*+,-./"
	var NUMBERS = "0123456789"

	len_flag := flag.Int("l", 10, "The length of the generated password (default: 10)")
	char_flag := flag.Bool("char", false, "Whether the passwords can use special characters")
	nums_flag := flag.Bool("nums", false, "Whether the password can use numbers")
	am_flag := flag.Int("am", 10, "The amount of passwords to generate")
	o_flag := flag.String("o", "foo.txt", "The file to output the generated text")

	flag.Parse()

	if *char_flag {
		available_chars = fmt.Sprintf("%s%s", available_chars, SPECIAL_CHARS)
	}
	if *nums_flag {
		available_chars = fmt.Sprintf("%s%s", available_chars, NUMBERS)
	}

	total_pword_text := ""

	for range *am_flag {
		total_pword_text = fmt.Sprintf("%s%s\n", total_pword_text, gen_password(*len_flag, available_chars))
	}
	f, err := os.Create(*o_flag)
	if err != nil {
		panic(err)
	}
	defer f.Close()

	f.WriteString(total_pword_text)
}
