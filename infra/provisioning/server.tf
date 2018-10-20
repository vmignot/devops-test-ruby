data "scaleway_image" "centos" {
  architecture = "x86_64"
  name         = "CentOS 7.4"
}

resource "scaleway_ip" "aircall" {}

resource "scaleway_server" "aircall" {
  name  = "aircall"
  image = "${data.scaleway_image.centos.id}"
  type  = "START1-S"

  public_ip = "${scaleway_ip.aircall.ip}"
}

resource "scaleway_security_group" "aircall" {
  name        = "aircall"
  description = "aircall"
}

resource "scaleway_security_group_rule" "accept_http" {
  security_group = "${scaleway_security_group.aircall.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 80
}

resource "scaleway_security_group_rule" "accept_https" {
  security_group = "${scaleway_security_group.aircall.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 443
}
