output "security_group" {
  value = "${aws_cloudformation_stack.bastion.outputs["BastionSecurityGroup"]}"
}
