locals {
    final-name  ="${var.project_name}-${var.environment}-${var.component}"

    Name = merge(var.common_tags,
                           {
                            component = "cart"
                           })
}


