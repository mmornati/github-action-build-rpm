# github-action-build-rpm
This repository is only an example on how to use the mock-rpmbuilder Docker container into the GitHub Actions System.

The simple workflow described here is:

![Workflow](https://res.cloudinary.com/blog-mornati-net/image/upload/v1548536683/Capture_d_e%CC%81cran_2019-01-26_a%CC%80_22.04.33_skagvj.png)

```
workflow "Build Repo RPM" {
  on = "push"
  resolves = ["Build RPM"]
}

action "Build RPM" {
  uses = "mmornati/docker-mock-rpmbuilder@master"
  env = {
    SPEC_FILE = "git.spec"
    SOURCES = "git-2.3.0.tar.gz"
    MOCK_CONFIG = "epel-6-i386"
  }
}
```

All the information about the env variables you can use for the mock-rpmbuilder are directly avaible on the [project repository](https://github.com/mmornati/docker-mock-rpmbuilder)

