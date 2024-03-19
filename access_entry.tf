
resource "aws_eks_access_entry" "access_entry_eks" {
  cluster_name = aws_eks_cluster.eks.name
  principal_arn = "arn:aws:iam::529219089249:role/aws-reserved/sso.amazonaws.com/eu-west-1/AWSReservedSSO_AdministratorAccess_2396230901430635"

}
resource "aws_eks_access_policy_association" "access_policy" {
  cluster_name = aws_eks_cluster.eks.name
  principal_arn = "arn:aws:iam::529219089249:role/aws-reserved/sso.amazonaws.com/eu-west-1/AWSReservedSSO_AdministratorAccess_2396230901430635"

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  access_scope {
    type       = "cluster"
  }
}