app {
  url = "https://www.nomadproject.io/docs/commands/job/init"
  author = "HashiCorp"
}

pack {
  name = "example"
  type = "job"
  description = "This pack contains the Nomad example job."
}

dependency "example_dep" {}
