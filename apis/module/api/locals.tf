locals {
  decoded_versions = {
    for v in var.versions : v.version => {
      version = v.version
      content = v.type == "json" ? jsondecode(data.local_file.local_content[v.version].content) : yamldecode(data.local_file.local_content[v.version].content)
    }
  }
}