resource "aws_launch_template" "example" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = var.availability_zones
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = aws_launch_template.example.id
    version = "$Latest"
  }
}