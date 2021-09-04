variable "labels" {
  type    = map(string)
  default = {}
}

variable "control_plane_name" {
  type    = string
  default = "default"
}

variable "name_spaces" {
  type    = list(string)
  default = ["test_namespace"]
}

variable "name_space_annotations" {
  type    = map(string)
  default = {}
}

