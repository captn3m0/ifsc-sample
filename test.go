package main
import (
	"fmt"
	ifsc "github.com/razorpay/ifsc/v2/src/go"
)

func main() {
	ifsc.Validate("PUNB0244200")
	fmt.Println(ifsc.GetBankName("PUNB"))
}