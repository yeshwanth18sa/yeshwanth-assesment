provider "aws" {
    region = "us-east-1"
  
}

resource "aws_ecs_cluster" "ecs_cluster" {
    name = var.ecs_cluster_name
     tags = {
    Name = "Assesment_ecs"
  }
}

variable "ecs_cluster_name" {
    description = "Application ECS Cluster Name"
}