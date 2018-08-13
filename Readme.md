# TF Multi Region Generator

## Introduction

Generate Terraform code for multiple (AWS) regions based on Jinja2 templating

## Contents

- [Install](#install)
- [Usage](#usage)

## Install

```bash
brew install terraform ngrok
```

## Usage

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
