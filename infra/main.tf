provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "enable_apis" {
  for_each = toset([
    "cloudbuild.googleapis.com",
    "artifactregistry.googleapis.com",
    "run.googleapis.com",
    "appengine.googleapis.com",
    "secretmanager.googleapis.com",
    "monitoring.googleapis.com",
  ])
  service = each.key
}

resource "google_artifact_registry_repository" "docker_repo" {
  provider = google
  project  = var.project_id
  location = var.region
  repository_id = "my-repo"
  format = "DOCKER"
  description = "Repo de imágenes"
}

resource "google_service_account" "cloudbuild_sa" {
  account_id   = "sa-cloudbuild"
  display_name = "Service Account para Cloud Build"
}

resource "google_project_iam_member" "cloudbuild_run_admin" {
  project = var.project_id
  role    = "roles/run.admin"
  member  = "serviceAccount:${google_service_account.cloudbuild_sa.email}"
}
