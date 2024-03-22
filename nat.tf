resource "aws_eip" "nat" {
  domain   = "vpc"

  tags = {
    Name = "${var.clusterName}-nat"
  }
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-eu-west-1a.id

  tags = {
    Name = "${var.clusterName}-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}