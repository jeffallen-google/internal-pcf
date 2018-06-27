module "nat" {
  source     = "GoogleCloudPlatform/nat-gateway/google"
  network    = "${data.google_compute_network.bbl-network.name}"
  subnetwork = "${data.google_compute_subnetwork.bbl-subnet.name}"
  region     = "${var.region}"
  name       = "${var.env_id}-"
}

output "nat_routing_tag" {
  value = "${module.nat.routing_tag_zonal}"
}
