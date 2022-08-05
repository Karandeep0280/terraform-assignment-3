variable "ami" {
    type = list(string)
    description = "assign the ami to server"
  
}


variable "name" {
    type = list(string)
    description =  "assign the name to the server"
}
variable "jak" {
    type = list(string)
    description = "assign the name  to owner"
  
}

  
  variable "karan10" {
    type  = map(any)
    description = "pass the value"
    
  }
  variable "chandigarh" {
    type = set(string)
    description = "pass the value"
    
  }
  variable "buckname" {
    description = "pass the name of bucket"
    type = map(any)
    
  }
  variable "vertual" {
    type = map(any)
    description = "passn the value of vpc"
  }