#crrate instance using count function

resource "aws_instance" "punch" {
    count = length(var.ami)
    ami  = var.ami[count.index]
    instance_type = "t2.micro"
    tags = {
      Name =var.name[count.index]
      Owner = var.jak[count.index]
       }
}



# create instance using for each with map
resource "aws_instance" "punch1" {  
    instance_type = each.value.instance_type
    ami  = each.value.ami
    for_each = var.karan10
    tags = {
      Name = each.value.name
      Owner= each.key
  }
}
#SET
resource "aws_instance" "punch2" {     
    instance_type = "t2.micro"
    ami  = "ami-08df646e18b182346"
    for_each = toset(var.chandigarh)
    tags = {
      Name = each.key
      Owner= "Varinder"
    }
  
}

 
resource "aws_instance" "punch5" {     
    instance_type = "t2.micro"
    ami  = "ami-08df646e18b182346"
    tags = {
      Name = "karanrajpoot"
      Owner= "Varinder"
    }
}
# create bucket with for loop
resource "aws_s3_bucket" "karan15" {
  bucket = "happysingh-buc"
  for_each = var.buckname

  tags = {
    Name  = each.value
    owner = "deep"
  }
} 

#create volume
resource "aws_ebs_volume" "demoEBS" {
  availability_zone = "ap-south-1a"
  size              = 10

  tags = {
    Name = "demovolume"
    owner ="karandeep singh"
  }
}
#attach volume to punch5 instance
resource "aws_volume_attachment" "storage" {
  device_name = "/dev/sdf"
  instance_id = aws_instance.punch5.id
  volume_id = aws_ebs_volume.demoEBS.id
  
}
#craete VPC 
resource "aws_vpc" "public_vpc" {
  cidr_block  = "10.0.1.0/24"
  for_each    = var.vertual
  instance_tenancy = "default"

  tags = {
    name =each.value,
    owner=each.key
  }
}
