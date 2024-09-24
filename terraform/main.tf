module "ecs" {
  source = "./module"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
  ecs_cluster_name   = "ecs-cluster"
  ecs_task_family    = "springboot-app"
  ecs_cpu            = "256"
  ecs_memory         = "512"
  container_name     = "springboot-app"
  docker_image       = "casoni/spring-boot-app:latest" # Replace with your image
  container_port     = 8080
  host_port          = 8080
  ecs_desired_count  = 1
  ecs_service_name   = "springboot-service"
  alb_name           = "tf-app-lb"
  alb_port           = 8080
  alb_listener_port  = 8080
}
