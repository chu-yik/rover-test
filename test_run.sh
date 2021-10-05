
#!/usr/bin/env bash

ACK_GINKGO_DEPRECATIONS=1.16.4 AWS_REGION=us-west-2 time ginkgo -tags=e2e -v -stream -trace -p ./test/e2e/suites/unmanaged/... -node 1 -- -config-path="/Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/data/e2e_conf.yaml" -artifacts-folder="/Users/chumich/go/sigs.k8s.io/rover-test/_artifacts" --data-folder="/Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/data" -use-existing-cluster="false" -skip-cloudformation-deletion