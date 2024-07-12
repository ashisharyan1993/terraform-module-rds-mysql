#create a RDS Database Instance
resource "aws_db_instance" "myinstance" {
  engine               = var.engine
  identifier           = var.identifier
  allocated_storage    = var.allocated_storage
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
  skip_final_snapshot  = var.skip_final_snapshot
  publicly_accessible =  var.publicly_accessible
}

resource "aws_db_subnet_group" "rds_subnet_group" {
    name        = "wp-db-subnet-group"
    description = "VPC Subnets"
    subnet_ids  = ["${var.public_subnet}","${var.private_subnet}"]
}

#create a security group for RDS Database Instance
resource "aws_security_group" "rds_sg" {
  name = var.rds_sg_name
  vpc_id = var.vpc_id
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
