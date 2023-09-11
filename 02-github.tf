module "github_personal" {
  source         = "./modules"
  repo_name      = "terraform-github-personal"
  username       = "rmalenko"
  branches       = ["production", "development", "staging"]
  default_branch = "production"
  environment_git = {
    production = {
      env_name               = "production"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    },
    production_02 = {
      env_name               = "production"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
    staging = {
      env_name               = "staging"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
    staging_02 = {
      env_name               = "staging"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
    development = {
      env_name               = "development"
      env_var_name           = "hostname"
      env_var_value          = "%s"
      secret_name            = "ssh_key"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
    development_02 = {
      env_name               = "development"
      env_var_name           = "hostname_02"
      env_var_value          = "%s"
      secret_name            = "ssh_key_02"
      secret_value_plaintext = "%s"
      secret_value_encrypted = base64encode("a secret value")
    }
  }
}
