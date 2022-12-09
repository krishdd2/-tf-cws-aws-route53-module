# Tp create public hosted zone and subdomain zone for that
resource "aws_route53_zone" "kk-main-domain" {
  name = "kk-shop-us-1.com"
}

resource "aws_route53_zone" "west-sub-domain" {
  name = "west.kk-shop-us-1.com"

  tags = {
    Environment = "dev"
  }
}
# To crate A record for kk-shop-us-1.com zone
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.kk-main-domain.zone_id
  name    = "www.kk-shop-us-1.com"
  type    = "A"
  ttl     = 300
  records = ["10.0.0.100"]
}
