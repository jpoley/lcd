package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

type NameEvent struct {
	Name string `json:"name"`
}

func HandleRequest(ctx context.Context, name NameEvent) (string, error) {
	return fmt.Sprintf("%s, check out this good advice  https://www.flickr.com/photos/135634760@N05/21602575934 ", name.Name), nil
}

func main() {
	lambda.Start(HandleRequest)
}
