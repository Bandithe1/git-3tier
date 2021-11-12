resource "github_repository" "git-demo" {
  name      = "tf-acc-test-%s"
  auto_init = true
}

resource "github_repository_file" "git-demo" {
  repository          = "https://github.com/Bandithe1/git-demo.git"
  branch              = "main"
  file                = ".gitignore"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Bandithe1r"
  commit_email        = "bandithe1@outlook.com"
  overwrite_on_create = true
}