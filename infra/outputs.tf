output "cloudbuild_service_account_email" {
  description = "Correo del Service Account de Cloud Build"
  value       = google_service_account.cloudbuild_sa.email
}

output "artifact_registry_repo" {
  description = "Nombre del repositorio de Artifact Registry"
  value       = google_artifact_registry_repository.docker_repo.repository_id
}
