resource "random_id" "cd_name" {
  byte_length = 8
}

output "cd_name" {
  value = random_id.cd_name.hex
}

terraform {
  cloud {
    organization = "mullen-hashi"
    workspaces {
      project = "scratch"
      name = "cd-test-#{Octopus.Environment.Name}"
    }
  }
}
