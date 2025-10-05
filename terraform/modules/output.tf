output "ec2_public_ip" {
    description = "The public IP address of the EC2 instances"
    value       = aws_instance.my_instance[*].public_ip 
}

# output "ec2_private_ip" {
#     description = "The private IP address of the EC2 instances"
#     value       = aws_instance.my-instance[*].private_ip 
# }