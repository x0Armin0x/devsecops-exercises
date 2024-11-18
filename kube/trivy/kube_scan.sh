#! /bin/bash
# SCAN cluster for vulnerabilities

TRIVY_DB=${TRIVY_DB:-ghcr.io/aquasecurity/trivy-db,public.ecr.aws/aquasecurity/trivy-db}
TRIVY_JAVA_DB=${TRIVY_JAVA_DB:-ghcr.io/aquasecurity/trivy-java-db,public.ecr.aws/aquasecurity/trivy-java-db}
CLUSTER_IP=127.0.0.1

namespaces=dso-apps
resources=deployments,pods
report_type=all # or summary

docker run --rm \
    -v "$HOME"/.kube/config-dso-user:/root/.kube/config \
    -v "$HOME"/Library/Caches:/root/.cache/ \
    -e TRIVY_DB_REPOSITORY="$TRIVY_DB" \
    -e TRIVY_JAVA_DB_REPOSITORY="$TRIVY_DB_JAVA" \
    --add-host k8scp-dso:$CLUSTER_IP \
    aquasec/trivy k8s \
    --severity HIGH,CRITICAL \
    --include-namespaces $namespaces \
    --include-kinds $resources \
    --report $report_type