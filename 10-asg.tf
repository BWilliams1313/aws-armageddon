# Launch Template defined in 09-launch-template.tf

resource "aws_autoscaling_group" "tokyo-asg" {
  name                      = "tokyo-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "tokyo-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "tokyo-asg" # Why cannot create own tags?
    value               = "bar"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

}

# Launch Template defined in 09-launch-template.tf

resource "aws_autoscaling_group" "tokyo-asg" {
  name                      = "tokyo-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "tokyo-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "tokyo-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

}

# Launch Template defined in 09-launch-template.tf

resource "aws_autoscaling_group" "new-york-asg" {
  name                      = "new-york-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "new-york-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "new-york-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

}

resource "aws_autoscaling_group" "london-asg" {
  name                      = "london-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "london-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "london-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }

}

resource "aws_autoscaling_group" "sao-paulo-asg" {
  name                      = "sao-paulo-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "sao-paulo-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "sao-paulo-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }
}

resource "aws_autoscaling_group" "australia-asg" {
  name                      = "australia-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "australia-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "australia-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }
}

resource "aws_autoscaling_group" "hong-kong-asg" {
  name                      = "hong-kong-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "hong-kong-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "hong-kong-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }
}

resource "aws_autoscaling_group" "california-asg" {
  name                      = "california-asg-asg"
  max_size                  = 4
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB" # Confirm that we're using an ELB
  desired_capacity          = 2
  force_delete              = true
  placement_group           = aws_placement_group.test.id # Need to create an Placement Group?
  launch_configuration      = aws_launch_template._1.name
  vpc_zone_identifier       = var.network.vpcs

  instance_maintenance_policy {
    min_healthy_percentage = 90
    max_healthy_percentage = 120
  }

  initial_lifecycle_hook {
    name                 = "california-asg-hook"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 2000
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING" #
  }

  tag {
    key                 = "name" # Why cannot create own tags?
    value               = "california-asg"
    propagate_at_launch = true
  }

  timeouts {
    delete = "15m"
  }
}







