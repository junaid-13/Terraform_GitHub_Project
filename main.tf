provider "github" {
    token = var.github_token
    owner = ""
}

resource "github_repository" "Terraform_GitHub_Project"{
    name = "Terraform_GitHub_Project"
    description = "This repository is created with the help of terraform"
    visibility = "public"
    auto_init = true
    gitignore_template = "Terraform"
    license_template = "mit"
    topics = ["terraform", "github", "devops"]
    has_wiki = false
    has_projects = false
    has_downloads = true
    has_issues = false

}

output "repository_name" {
    value = github_repository.Terraform_GitHub_Project.name
}

output "repository_url" {
    value = github_repository.Terraform_GitHub_Project.html_url
  
}