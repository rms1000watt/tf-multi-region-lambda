package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/aws/aws-lambda-go/lambda"
)

// Response is the generic lambda response
type Response struct {
	Success bool
	Message string
}

// Handler is the main entrypoint for lambda
func Handler() (res Response, err error) {
	url := os.Getenv("SPAM_URL")

	// A lot more concurrency can be added here..
	r, err := http.Get(url)
	if err != nil {
		res.Message = "Failed getting URL: " + err.Error()
	}

	res.Success = true
	res.Message = r.Status
	fmt.Println(res)
	return
}

func main() {
	lambda.Start(Handler)
}
