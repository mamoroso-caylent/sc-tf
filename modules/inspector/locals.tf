# IAM Inspector Locals
# Doc: https://docs.aws.amazon.com/inspector/latest/userguide/inspector_rules-arns.html
locals {

  rules_package_arns = [
    # Common Vulnerabilities and Exposures	
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gEjTy7T7",
    
    # CIS Operating System Security Configuration Benchmarks
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-rExsr2X8",
    
    # Network Reachability	
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-PmNV0Tcd",
    
    # Security Best Practices	
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-R01qwB5Q"
  ]
}
  
	
