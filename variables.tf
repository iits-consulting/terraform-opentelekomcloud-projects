variable "projects" {
  type        = map(string)
  description = "A map of project names to project descriptions."
}

variable "all_projects" {
  type        = bool
  description = "Whether created agency roles are applied to all projects including future projects."
  default     = true
}

locals {
  builtin_projects = [
    "eu-de",
    "eu-nl",
    "MOS",
  ]
}
