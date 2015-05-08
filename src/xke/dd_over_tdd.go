package main
import (
	"strconv"
)

func reduce(value int) (computed int, err error) {
	if value > 9 {
		var valueAsString = strconv.FormatInt(int64(value), 10)
		var first int
		first, err = strconv.Atoi(string(valueAsString[0]))
		if err != nil {
			return value, err
		}
		var restAsString = valueAsString[1:len(valueAsString)]
		var rest int
		rest, err = strconv.Atoi(restAsString)
		if err != nil {
			return value, err
		}
		return reduce(first + rest);
	}
	return value, err
}

func convertToNumber(name string) (sum int, err error) {
	for index := range name {
		var letter = string(name[index])
		var value int
		value, err = convert(letter)
		sum += value
	}
	if sum > 9 {
		return reduce(sum)
	}
	return sum, err
}

func convertToType(name string) (dndType string, err error) {
	var num int
	num, err = convertToNumber(name)
	return string(num+int('A')), err
}

func convertToItem(name string) (item string, err error) {
	var dndType string
	dndType, err = convertToType(name)
	return items[dndType], err
}