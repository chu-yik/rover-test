
#!/usr/bin/env bash

function pull_images() {
    echo "Pulling hardcoded images"
    docker pull quay.io/jetstack/cert-manager-cainjector:v1.5.3
    docker pull quay.io/jetstack/cert-manager-webhook:v1.5.3
    docker pull quay.io/jetstack/cert-manager-controller:v1.5.3
    docker pull k8s.gcr.io/cluster-api/kubeadm-control-plane-controller:v0.4.3
    docker pull k8s.gcr.io/cluster-api/kubeadm-bootstrap-controller:v0.4.3
    docker pull k8s.gcr.io/cluster-api/cluster-api-controller:v0.4.3
    docker pull k8s.gcr.io/cluster-api-aws/cluster-api-aws-controller:v0.7.0
    echo "Done pulling hardcoded images"
}

function run_test() {
    echo "Running test with hardcoded AWS_REGION=us-west-2"
    # ACK_GINKGO_DEPRECATIONS to suppress deprecation warning
    # -skip-cloudformation-deletion just to speed up things a bit (CF for AWS roles etc) - CAPA specific
    # setting to 2 node for now for cleaner result, remove -nodes=2 later
    ACK_GINKGO_DEPRECATIONS=1.16.4 AWS_REGION=us-west-2 time ginkgo -tags=e2e -v -nodes=2 -stream -trace -p ./test/e2e/suites/unmanaged/... -- -config-path="/Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/data/e2e_conf.yaml" -artifacts-folder="/Users/chumich/go/sigs.k8s.io/rover-test/_artifacts" --data-folder="/Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/data" -use-existing-cluster="false" -skip-cloudformation-deletion
}

function main() {
    # pull_images
    run_test
}

main