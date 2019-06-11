output "asg_name" {
  description = "The name of the autoscaling group"
  value       = "${element(concat(aws_autoscaling_group.this.*.name, list("")), 0)}"
}

output "min_size" {
  value = "${aws_autoscaling_group.this.min_size}"
}

output "desired_capacity" {
  value = "${aws_autoscaling_group.this.desired_capacity}"
}

output "max_size" {
  value = "${aws_autoscaling_group.this.max_size}"
}
