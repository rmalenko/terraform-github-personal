locals {
  gituser_ssh       = "gitusrssh"
  private_key_ecdsa = "key_ecdsa"
  private_key_rsa   = "key_rsa"
}

module "github_personal" {
  source               = "./modules/github"
  repo_name            = "testing"
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
  gituser_ssh          = local.gituser_ssh
  private_key_ecdsa    = local.private_key_ecdsa
  private_key_rsa      = local.private_key_rsa

  environment_git = [
    {
      env_name      = "production"
      env_var_name  = "HOSTNAME"
      env_var_value = "production.domain.com"
    },
    {
      env_name      = "production"
      env_var_name  = "HOSTNAME_02"
      env_var_value = "production.domain.com"
    },
    {
      env_name      = "production"
      env_var_name  = "SSH_USER"
      env_var_value = local.gituser_ssh
    },

    {
      env_name      = "staging"
      env_var_name  = "HOSTNAME"
      env_var_value = "production.domain.com"
    },
    {
      env_name      = "staging"
      env_var_name  = "SSH_USER"
      env_var_value = local.gituser_ssh
    },

    {
      env_name      = "development"
      env_var_name  = "HOSTNAME"
      env_var_value = "production.domain.com"
    },
    {
      env_name      = "development"
      env_var_name  = "SSH_USER"
      env_var_value = local.gituser_ssh
    },
  ]

  secrets_git = [
    {
      env_name               = "production"
      secret_name            = "SSH_KEY_DSA"
      secret_value_plaintext = local.private_key_ecdsa
      secret_value_encrypted = base64encode(local.private_key_ecdsa)
    },
    {
      env_name               = "production"
      secret_name            = "SSH_KEY_RSA"
      secret_value_plaintext = local.private_key_rsa
      secret_value_encrypted = base64encode(local.private_key_rsa)
    },

    {
      env_name               = "staging"
      secret_name            = "SSH_KEY_RSA"
      secret_value_plaintext = local.private_key_rsa
      secret_value_encrypted = base64encode(local.private_key_rsa)
    },

    {
      env_name               = "development"
      secret_name            = "SSH_KEY_RSA"
      secret_value_plaintext = local.private_key_rsa
      secret_value_encrypted = base64encode(local.private_key_rsa)
    },
  ]
}
