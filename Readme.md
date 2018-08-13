# TF Multi Region Lambda

## Introduction

Deploy Lambda in multiple regions.. powered by [Serverless-TF](https://github.com/rms1000watt/serverless-tf)

## Contents

- [Install](#install)
- [Usage](#usage)

## Install

```bash
brew install terraform ngrok
```

## Usage

You can test deploying multi-region lambdas and have them spam your local server using Ngrok

### In one terminal

```bash
docker run --rm -it -p 5678:5678 hashicorp/http-echo -text="hello world"
```

### In another terminal

```bash
ngrok http 5678
```

### In another terminal

Give the URL from Ngrok in the prompt to the `terraform apply` below

```bash
terraform init
terraform apply
```
