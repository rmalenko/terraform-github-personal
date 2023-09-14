variable "repo_name" {
  type        = string
  description = "A name for repo"
}

variable "branches" {
  type        = set(string)
  description = "List of Git branches"
}

variable "username" {
  type        = string
  description = "Git username"
}

variable "default_branch" {
  type        = string
  description = "The default branch"
}

variable "environment_git" {
  description = "Environment configurations for the GitHub module"
  type = list(object({
    env_name               = string
    env_var_name           = string
    env_var_value          = string
    secret_name            = string
    secret_value_plaintext = string
    secret_value_encrypted = string
  }))
}

variable "description" {
  type        = string
  description = "The description"
}

variable "visibility" {
  type = string
}

variable "auto_init" {
  type = bool
}

variable "has_issues" {
  type = bool
}

variable "has_discussions" {
  type = bool
}

variable "vulnerability_alerts" {
  type = bool
}

variable "gitignore_template" {
  type = string
}

variable "license_template" {
  type = string
}
