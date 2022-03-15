data "aws_route53_zone" "dtm" {
  name = "dtm.dev."
}

# https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain-and-the-www-subdomain-variants
resource "aws_route53_record" "naked" {
  zone_id = data.aws_route53_zone.dtm.zone_id
  name    = var.dtm_domain
  type    = "A"
  ttl     = "300"
  records = var.github_pages_ip_set
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.dtm.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = "300"
  records = [var.github_pages_domain]
}

