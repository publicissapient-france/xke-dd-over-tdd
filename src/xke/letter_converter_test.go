package main
import (
	"testing"
	"github.com/stretchr/testify/assert"
)

func Test_Should_Convert_A_To_0(t *testing.T) {
	var number, _ = convert("A")
	assert.Equal(t, 0, number)
}

func Test_Should_Convert_a_To_0(t *testing.T) {
	var number, _ = convert("a")
	assert.Equal(t, 0, number)
}


func Test_Should_Convert_b_To_1(t *testing.T) {
	var number, _ = convert("b")
	assert.Equal(t, 1, number)
}

func Test_Should_Convert_B_To_1(t *testing.T) {
	var number, _ = convert("B")
	assert.Equal(t, 1, number)
}

func Test_Should_Convert_C_To_2(t *testing.T) {
	var number, _ = convert("C")
	assert.Equal(t, 2, number)
}

func Test_Should_Convert_9_To_9(t *testing.T) {
	var number, _ = convert("9")
	assert.Equal(t, 9, number)
}

func Test_Should_Get_Error(t *testing.T) {
	var _, err = convert("ù")
	assert.Equal(t, err.Error(), "Invalid value")
}
