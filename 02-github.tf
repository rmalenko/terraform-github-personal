module "github_personal" {
  # source               = "./modules"
  source               = "./modules/github"
  repo_name            = "terraform-aws-alb-ec2-testing"
  username             = "rmalenko"
  branches             = ["production", "development", "staging"]
  default_branch       = "production"
  description          = "The test terraform repository"
  visibility           = "public"
  auto_init            = true
  has_issues           = true
  has_discussions      = true
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  vulnerability_alerts = true
  environment_git = [
    {
      env_name               = "production"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "production"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "production"
      env_var_name           = "ssh_user"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "staging"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "staging"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "development"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    {
      env_name               = "development"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
  ]
}
