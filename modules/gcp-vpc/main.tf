data "google_compute_network" "gcp_vpc" {
  name    = var.gcp_vpc
  project = var.project
}

# Connect VPC through Alkira CXP
resource "alkira_connector_gcp_vpc" "connector" {

  # GCP values
  name         = var.gcp_vpc
  gcp_vpc_name = var.gcp_vpc
  gcp_region   = var.cloud_region
  gcp_vpc_id   = data.google_compute_network.gcp_vpc.id

  # CXP values
  cxp             = var.cxp
  size            = var.size
  group           = var.group
  segment_id      = var.segment_id
  billing_tag_ids = [var.billing_tag_id]
  credential_id   = var.credential_id

}