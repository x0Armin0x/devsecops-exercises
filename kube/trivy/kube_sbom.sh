#! /bin/bash
# Produce KBOM for kubernetes cluster in .kube/config-dso

TRIVY_DB=${TRIVY_DB:-ghcr.io/aquasecurity/trivy-db,public.ecr.aws/aquasecurity/trivy-db}
TRIVY_JAVA_DB=${TRIVY_JAVA_DB:-ghcr.io/aquasecurity/trivy-java-db,public.ecr.aws/aquasecurity/trivy-java-db}
CLUSTER_IP=127.0.0.1

#create output directory
mkdir -p sboms

#generate sbom
docker run --rm \
    -v "$HOME"/.kube/config-dso-user:/root/.kube/config \
    -v ./sboms:/sboms \
    --add-host k8scp-dso:$CLUSTER_IP \
    aquasec/trivy k8s \
    --format cyclonedx \
    -o /sboms/mykbom.cdx.json

#scan sbom for vulnerabilities
docker run --rm \
    -v "$HOME"/.kube/config-dso-user:/root/.kube/config \
    -v ./sboms:/sboms \
    -v "$HOME"/Library/Caches:/root/.cache/ \
    -e TRIVY_DB_REPOSITORY="$TRIVY_DB" \
    -e TRIVY_JAVA_DB_REPOSITORY="$TRIVY_DB_JAVA" \
    --add-host k8scp-dso:$CLUSTER_IP \
    aquasec/trivy sbom /sboms/mykbom.cdx.json \
    -o /sboms/mykbom.cdx.vex.json