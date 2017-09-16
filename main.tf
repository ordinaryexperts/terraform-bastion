resource "aws_cloudformation_stack" "bastion" {
  name       = "${var.name}-${var.env}-bastion-stack"
  on_failure = "DELETE"

  parameters {
    Active        = "${var.active}"
    Ami           = "${var.ami}"
    Env           = "${var.env}"
    KeyName       = "${var.key_name}"
    PublicSubnets = "${var.public_subnets}"
    VpcId         = "${var.vpc_id}"
  }

  template_body = "${file("${path.module}/template.yaml")}"
}
