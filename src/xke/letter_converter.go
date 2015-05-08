package main
import (
	"strings"
	"errors"
)

func convert(letter string) (result int, err error) {
	var value, ok = reference[letter]
	if (ok) {
		return value, err
	}
	value, ok = reference[strings.ToUpper(letter)]
	if (ok) {
		return value, err
	}
	err = errors.New("Invalid value")
	return -1, err
}