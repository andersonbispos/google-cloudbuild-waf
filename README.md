# google-cloudbuild-waf

## commands

export KUBECONFIG=~/.kube/waf-lab-config

gcloud container clusters list

gcloud container clusters get-credentials teste-gke-cluster01 --location=southamerica-east1-c

kubectl create deployment juice-shop --image bkimminich/juice-shop --port 3000

#### Query to check enforced and preview rules

resource.type:(http_load_balancer) AND (
(jsonPayload.previewSecurityPolicy.priority >= 9000 AND jsonPayload.previewSecurityPolicy.priority <= 9010) OR
(jsonPayload.enforcedSecurityPolicy.priority >= 9000 AND jsonPayload.enforcedSecurityPolicy.priority <= 9010))

## Referências

### dotnet samples

https://github.com/GoogleCloudPlatform/dotnet-docs-samples

### cloudbuild

https://github.com/GoogleCloudPlatform/gke-gitops-tutorial-cloudbuild
https://www.cloudskillsboost.google/quests/141

### cloud armor

https://cloud.google.com/armor/?hl=en
https://cloud.google.com/armor/docs/waf-rules
https://codelabs.developers.google.com/codelabs/cloudnet-ca-waf-rules#0
https://cloud.google.com/armor/docs/integrating-cloud-armor#with_ingress

https://www.cloudskillsboost.google/quests/254
https://networkandcode.github.io/owasp/juice/shop/2021/08/08/owasp-juice-shop-run-as-kubernetes-service.html


