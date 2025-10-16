PROJECT_ID=fiery-synthesis-472821-m2
SA=sa-cloudbuild@$PROJECT_ID.iam.gserviceaccount.com

# Permitir usar Cloud Build
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$SA" \
  --role="roles/cloudbuild.builds.editor"

# Permitir acceso al bucket interno de Cloud Build
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$SA" \
  --role="roles/storage.admin"

# Permitir usar servicios en general
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="serviceAccount:$SA" \
  --role="roles/serviceusage.serviceUsageConsumer"