#get device name
# output "device_name" {
#     value = aws_instance.punch5.aws_ebs_volume.demoEBS.id

# }
#get ami id 
output "getname" {
    value = aws_instance.punch5.ami
  
}
# get instance type
output "ins_type" {
    value = aws_instance.punch5.instance_type 
}
 #get ami ID with for loop
output "amI_with_loop" {
    value = [for i in var.karan10: i.ami]
  
}
# get ins name with for loop
output "ins_name" {
    value =[for i in var.karan10: i.name] 
}
output "ins_id" {
    value = aws_instance.punch5.id
  
}
output "vol_id" {
    value = aws_ebs_volume.demoEBS.id
    
  
}
