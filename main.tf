provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source  = "rms1000watt/serverless-tf/aws"
  version = "0.2.9"

  functions = [
    {
      region        = "us-east-1"      // N Virginia
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "us-east-2"      // Ohio
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "us-west-1"      // N California
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ap-south-1"     // Mumbai
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ap-northeast-1" // Tokyo
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ap-northeast-2" // Seoul
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ap-southeast-1" // Singapore
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ap-southeast-2" // Sydney
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "ca-central-1"   // Canada
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
    {
      region        = "sa-east-1"      // Sao Paulo
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
      env_keys      = "SPAM_URL"
      env_vals      = "${var.url}"
    },
  ]
}
