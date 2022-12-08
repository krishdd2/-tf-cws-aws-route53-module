# Tp create public hosted zone and subdomain zone for that 
resource "aws_route53_zone" "kk-main-domain-2" {
  name = "kk-shop-2-us.com"
}

resource "aws_route53_zone" "west-sub-domain" {
  name = "east.kk-shop-2-us.com"

  tags = {
    Environment = "dev"
  }
}
