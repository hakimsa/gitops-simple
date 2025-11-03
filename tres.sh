















  PROJECT_ID="fiery-synthesis-472821-m2"
SA="serviceAccount:github-actions-sa@$PROJECT_ID.iam.gserviceaccount.com"

# Permitir lanzar builds y ver resultados
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="$SA" \
  --role="roles/cloudbuild.builds.editor"

# Permitir usar Artifact Registry (subir imágenes Docker)
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="$SA" \
  --role="roles/artifactregistry.writer"

# Permitir desplegar en Cloud Run
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="$SA" \
  --role="roles/run.admin"

# Permitir autenticarse y gestionar cuentas de servicio
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="$SA" \
  --role="roles/iam.serviceAccountUser"

# (Opcional, pero útil para leer logs de build)
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="$SA" \
  --role="roles/viewer"
