# A host project provides network resources to associated service projects.
resource "google_compute_shared_vpc_host_project" "host" {
  count   = var.host_project != null ? 1 : 0
  project = var.host_project
}

# A service project gains access to network resources provided by its
# associated host project.
resource "google_compute_shared_vpc_service_project" "service1" {
  host_project    = google_compute_shared_vpc_host_project.host[0].project
  for_each        = toset(var.service_project)
  service_project = each.value
}