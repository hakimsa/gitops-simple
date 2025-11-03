# Exporta el valor actual
gcloud secrets versions access latest \
  --secret=TOKEN_SONRQUBE_GITOPS \
  --project=fiery-synthesis-472821-m2 > token.txt

# Crea uno nuevo con replicación automática
gcloud secrets create TOKEN_SONRQUBE_GITOPS_GLOBAL \
  --replication-policy="automatic" \
  --project=fiery-synthesis-472821-m2

# Sube el contenido
gcloud secrets versions add TOKEN_SONRQUBE_GITOPS_GLOBAL \
  --data-file=token.txt \
  --project=fiery-synthesis-472821-m2

# Da permisos a Cloud Build
gcloud secrets add-iam-policy-binding TOKEN_SONRQUBE_GITOPS_GLOBAL \
  --member="serviceAccount:743628116662@cloudbuild.gserviceaccount.com" \
  --role="roles/secretmanager.secretAccessor" \
  --project=fiery-synthesis-472821-m2
