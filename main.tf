provider "aws" {
   region     = "us-east-1"
}

resource "aws_instance" "ec2_example" {

    for_each = {
      instance1 = "t2.micro"
      instance2 = "t3.micro"
    }

   ami           = "ami-02b60b5095d1e5227"
   instance_type =  each.value

   tags = {
           Name = "Terraform-cloud ${each.key}"
   }
}
