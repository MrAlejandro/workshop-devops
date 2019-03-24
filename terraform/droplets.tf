resource "digitalocean_ssh_key" "mralejandro" {
  name = "mralejandro"
  public_key = "${file("/Users/Alex/.ssh/public/do.pub")}"
}

resource "digitalocean_droplet" "web" {
  image  = "docker-18-04"
  name   = "web-1"
  region = "fra1"
  size   = "s-1vcpu-1gb"
  ssh_keys = ["${digitalocean_ssh_key.mralejandro.fingerprint}"]
}
