resource "random_id" "cd_name" {
  byte_length = 8
}

output "cd_name" {
  value = random_id.cd_name.hex
}

data "external" "echo" {
  program = ["bash", "-c", "echo '{\"TEST_VALUE\": \"'$TEST_VALUE'\"}'"]
}
output "echo" {
  value = data.external.echo.result
}


terraform {
  cloud {
    workspaces {
      project = "#{Octopus.Project.Name}-#{Octopus.Environment.Name}"
      name = "base_layer"
    }
  }
}