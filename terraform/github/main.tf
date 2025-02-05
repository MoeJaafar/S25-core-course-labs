resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.repo_visibility
  auto_init   = true



  archive_on_destroy = false
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = "master"  # Updated to "master"
}
