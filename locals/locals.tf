locals {
    final_tags = merge(var.ec2_tags,var.environment)
    final_sgname = "${var.project}-${var.sg_name}"
}