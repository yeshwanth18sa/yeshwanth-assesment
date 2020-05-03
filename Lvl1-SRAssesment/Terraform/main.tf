#EC2 module

module "ec2" {
    source = "./modules/"
    ami = "ami-0915e09cc7ceee3ab"
    instance_type = "t3a.micro"
    sg_id = ["sg-0030f7ccff2b31177"]
    user_data_path = "files/scripts.sh"
}