package main

import (
	"testing"
	"github.com/stretchr/testify/assert"
)

func Test_Should_Add_Letters_B_PLUS_C_Equal_TO_3(t *testing.T) {
	var number, _ = convertToNumber("BC")
	assert.Equal(t, 3, number)
}

func Test_Should_ReAdd_If_More_Than_9(t *testing.T) {
	var number, _ = convertToNumber("9B")
	assert.Equal(t, 1, number)
}

func Test_Should_Compute_9_For_GIDEON(t *testing.T) {
	var number, _ = convertToNumber("GIDEON")
	assert.Equal(t, 9, number)
}

func Test_Should_Compute_0_For_Akuku(t *testing.T) {
	var number, _ = convertToNumber("Akuku")
	assert.Equal(t, 0, number)
}

func Test_Should_Convert_In_Type(t *testing.T) {
	var ddtype, _ = convertToType("Akuku")
	assert.Equal(t, "A", ddtype)
}

func Test_Should_Convert_In_Item_for_Akuku(t *testing.T) {
	var ddtype, _ = convertToItem("Akuku")
	assert.Equal(t, "Medal", ddtype)
}

func Test_Should_Convert_In_Item_for_Kayin(t *testing.T) {
	var ddtype, _ = convertToItem("Kayin")
	assert.Equal(t, "Boots of Speed", ddtype)
}