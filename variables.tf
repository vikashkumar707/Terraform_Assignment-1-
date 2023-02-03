
#defining the values in tfvars file
variable "file1" {
  type    = string
  default = "myfile.txt"
}
variable "content1" {
  type    = string
  default = "first variable"
}


variable "var_file2" {
  type    = string
  default = "myfile1.txt"
}
variable "var_content2" {
  type    = number
  default = 3345867893678
}

variable "map" {
  type = map(string)
}

variable "obj" {
  type = object({
    f-name  = string
    address = string
  })
  sensitive = true
}

variable "a" {
  type = list(string)

}


variable "set_password" {
  type    = bool
  default = false
}