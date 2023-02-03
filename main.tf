//resource
resource "local_file" "f1" {
  filename = "file1.txt"
  content  = "Hello! this is my first terraform code"
}

resource "local_file" "fi2" {
  filename = "file2.txt"
  content  = "Hello! first content file"
}


//use of local resource
locals {
  content_for_files = "Hello!This is local file content"
}
//use of random resource
resource "random_id" "random-file-name" {
  byte_length = 8 //doesn't create string but a byte file
}
//using above locals and random in this resource
resource "local_file" "f2" {
  filename = random_id.random-file-name.hex
  content  = local.content_for_files
}

#use of variable of type string
resource "local_file" "f3" {
  filename = var.file1
  content  = var.content1
}

#use of variable of type number
resource "local_file" "f4" {
  filename = var.var_file2
  content  = var.var_content2
}

#use of variable of type map
resource "local_file" "f5" {
  filename = var.map["filename"] //residing in tfvars
  content  = var.map["content"]
}

#use of variable of type object
resource "local_file" "f6" {
  filename = var.obj["f-name"]
  content  = var.obj["address"]
}

#use of variable of type list
resource "local_file" "f7" {
  filename = var.a[1]
  content  = "content from list"
}

#use of variable of type bool
resource "local_file" "f8" {
  filename = "file2.txt"
  content  = var.set_password
}

