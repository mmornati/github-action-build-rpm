workflow "Build Repo RPM" {
  on = "push"
  resolves = ["Build RPM"]
}

action "Build RPM" {
  uses = "mmornati/docker-mock-rpmbuilder@master"
  env = {
    SPEC_FILE = "git.spec"
    SOURCES = "SOURCES/git-2.3.0.tar.gz"
    MOCK_CONFIG = "epel-6-i386"
    GITHUB_BUILD = "true"
  }
}
