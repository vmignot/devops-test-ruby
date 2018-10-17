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
