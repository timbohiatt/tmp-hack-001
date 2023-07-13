# Variables 

# Get Current gcloud cli Project ID
export PROJECT_ID=$(gcloud config get-value project)
export REGION="europe-west6"
export INFRA_SA_EMAIL="infrastructure@${PROJECT_ID}.iam.gserviceaccount.com"
export WORKLOAD_SA_EMAIL="workload@${PROJECT_ID}.iam.gserviceaccount.com"
export CLOUD_RUN_SERVICE_LOCATION="europe-west6"
export CONTAINER_PORT="8080"

# Deploy a Cloud Run Service 
gcloud run deploy "ex003-cloud-run-with-docker-build-and-public-endpoint" \
    --source="./app-code" \
    --port=${CONTAINER_PORT} \
    --ingress="all" \
    --service-account=${WORKLOAD_SA_EMAIL}\
    --set-env-vars="CUSTOMER"="Tims app",COLOR_PRIMARY="#0018A8",COLOR_SECONDARY="#0018A8",COLOR_BACKGROUND="#FFFFFF",LOCATION="$CLOUD_RUN_SERVICE_LOCATION",PLATFORM="Cloud Run" \
    --platform=managed \
    --allow-unauthenticated \
    --description="" \
    --region="${REGION}" \
    --project=${PROJECT_ID}