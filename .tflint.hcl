plugin "terraform" {
  enabled = false
}

plugin "aws" {
    enabled = true
    version = "0.24.1"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}