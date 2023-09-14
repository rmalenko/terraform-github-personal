# Terraform. Github personal repository

This module creates a GitHub personal repository with the following branches `["production", "development", "staging"]` and with the same names for environments. Look at `var.branches`. Each of the environments can have variables and secrets. You can define this in file the`02-github.tf`.

For example, this configuration creates environments `production`, `development`, `staging`. Each has variables `hostname` and `hostname_02` and secret `ssh_key` and `ssh_key_02`. You may add as many as you need.

```hcl
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
¸```
