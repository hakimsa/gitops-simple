# Artifact Registry Admin
gcloud projects add-iam-policy-binding fiery-synthesis-472821-m2 \
  --member="serviceAccount:sa-cloudbuild@fiery-synthesis-472821-m2.iam.gserviceaccount.com" \
  --role="roles/artifactregistry.admin"

# Secret Manager Accessor
gcloud projects add-iam-policy-binding fiery-synthesis-472821-m2 \
  --member="serviceAccount:sa-cloudbuild@fiery-synthesis-472821-m2.iam.gserviceaccount.com" \
  --role="roles/secretmanager.secretAccessor"

# Logging Writer
gcloud projects add-iam-policy-binding fiery-synthesis-472821-m2 \
  --member="serviceAccount:sa-cloudbuild@fiery-synthesis-472821-m2.iam.gserviceaccount.com" \
  --role="roles/logging.logWriter"

# Monitoring Writer
gcloud projects add-iam-policy-binding fiery-synthesis-472821-m2 \
  --member="serviceAccount:sa-cloudbuild@fiery-synthesis-472821-m2.iam.gserviceaccount.com" \
  --role="roles/monitoring.metricWriter"

# Service Account User (para poder ejecutar recursos con otras SAs)
gcloud projects add-iam-policy-binding fiery-synthesis-472821-m2 \
  --member="serviceAccount:sa-cloudbuild@fiery-synthesis-472821-m2.iam.gserviceaccount.com" \
  --role="roles/iam.serviceAccountUser"
  08c2881654c750c8d1ee78796ba42ac8f6adf36c