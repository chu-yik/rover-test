# rover-test
Test rover test

Stripped down version of CAPA, with only one always-pass test, and only 2 ginkgo nodes

hardcoded test run with `/Users/chumich/go/sigs.k8s.io/rover-test` location

Test log
```
❯ ./test_run.sh
Running test with hardcoded AWS_REGION=us-west-2
[1] Running Suite: rover-e2e
[1] ========================
[1] Random Seed: 1633541018
[1] Parallel test node 1/2.
[1] 
[1] STEP: [Rover] Loading the e2e test configuration from "/Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/data/e2e_conf.yaml"
[2] Running Suite: rover-e2e
[2] ========================
[2] Random Seed: 1633541018
[2] Parallel test node 2/2.
[2] 
[1] STEP: Getting an AWS IAM session - from environment
[1] STEP: Creating a bootstrap AWSIAMConfiguration
[1] STEP: Creating AWS CloudFormation stack for AWS IAM resources: stack-name=cluster-api-provider-aws-sigs-k8s-io
[1] I1006 10:23:51.695971   80119 service.go:59] AWS Cloudformation stack "cluster-api-provider-aws-sigs-k8s-io" already exists, updating
[1] STEP: Deleting AWS IAM Service Linked Role: role-name=AWSServiceRoleForElasticLoadBalancing
[1] STEP: Deleting AWS IAM Service Linked Role: role-name=AWSServiceRoleForEC2Spot
[1] STEP: Ensuring presence of SSH key in EC2: key-name=cluster-api-provider-aws-sigs-k8s-io
[1] STEP: Deleting an existing access key: user-name=bootstrapper.cluster-api-provider-aws.sigs.k8s.io
[1] STEP: Creating an access key: user-name=bootstrapper.cluster-api-provider-aws.sigs.k8s.io
[1] STEP: Getting an AWS IAM session - from access key
[1] STEP: Searching for AMI: name=capa-ami-ubuntu-18.04-1.21.2*
[1] STEP: Using AMI: image-id=ami-076401dfa04149a4c
[1] STEP: Creating a clusterctl local repository into "/Users/chumich/go/sigs.k8s.io/rover-test/_artifacts"
[1] STEP: Reading the ClusterResourceSet manifest ../../data/cni/calico.yaml
[1] STEP: Setting up the bootstrap cluster
[1] INFO: Creating a kind cluster with name "test-ehnkxo"
[1] INFO: The kubeconfig file for the kind cluster is /var/folders/z2/fb04ygzx603_yfflb3669nnh0000gr/T/e2e-kind3055279934
[1] INFO: Loading image: "quay.io/jetstack/cert-manager-cainjector:v1.5.3"
[1] INFO: Loading image: "quay.io/jetstack/cert-manager-webhook:v1.5.3"
[1] INFO: Loading image: "quay.io/jetstack/cert-manager-controller:v1.5.3"
[1] INFO: Loading image: "k8s.gcr.io/cluster-api/kubeadm-control-plane-controller:v0.4.3"
[1] INFO: Loading image: "k8s.gcr.io/cluster-api/kubeadm-bootstrap-controller:v0.4.3"
[1] INFO: Loading image: "k8s.gcr.io/cluster-api/cluster-api-controller:v0.4.3"
[1] INFO: Loading image: "k8s.gcr.io/cluster-api-aws/cluster-api-aws-controller:v0.7.0"
[1] STEP: Setting environment variable: key=AWS_B64ENCODED_CREDENTIALS, value=*******
[1] STEP: Initializing the bootstrap cluster
[1] INFO: clusterctl init --core cluster-api --bootstrap kubeadm --control-plane kubeadm --infrastructure aws
[1] STEP: Waiting for provider controllers to be running
[1] STEP: Waiting for deployment capa-system/capa-controller-manager to be available
[1] INFO: Creating log watcher for controller capa-system/capa-controller-manager, pod capa-controller-manager-c4fc95fc8-ssrqm, container manager
[1] INFO: Creating log watcher for controller capa-system/capa-controller-manager, pod capa-controller-manager-c4fc95fc8-ssrqm, container kube-rbac-proxy
[1] STEP: Waiting for deployment capi-kubeadm-bootstrap-system/capi-kubeadm-bootstrap-controller-manager to be available
[1] INFO: Creating log watcher for controller capi-kubeadm-bootstrap-system/capi-kubeadm-bootstrap-controller-manager, pod capi-kubeadm-bootstrap-controller-manager-bfcd78f99-n2znt, container manager
[1] STEP: Waiting for deployment capi-kubeadm-control-plane-system/capi-kubeadm-control-plane-controller-manager to be available
[1] INFO: Creating log watcher for controller capi-kubeadm-control-plane-system/capi-kubeadm-control-plane-controller-manager, pod capi-kubeadm-control-plane-controller-manager-54f94494bd-6xffm, container manager
[1] STEP: Waiting for deployment capi-system/capi-controller-manager to be available
[1] INFO: Creating log watcher for controller capi-system/capi-controller-manager, pod capi-controller-manager-66b74b44bd-khzd5, container manager
[1] STEP: Getting an AWS IAM session - from access key
[1] STEP: Getting an AWS IAM session - from environment
[2] STEP: Getting an AWS IAM session - from access key
[2] STEP: Getting an AWS IAM session - from environment
[1] STEP: Setting environment variable: key=AWS_AVAILABILITY_ZONE_1, value=us-west-2a
[1] STEP: Setting environment variable: key=AWS_AVAILABILITY_ZONE_2, value=us-west-2b
[1] STEP: Setting environment variable: key=AWS_REGION, value=us-west-2
[1] STEP: Setting environment variable: key=AWS_SSH_KEY_NAME, value=cluster-api-provider-aws-sigs-k8s-io
[1] [Rover dummy test] Running an always pass test 
[1]   should always pass
[1]   /Users/chumich/go/sigs.k8s.io/rover-test/test/e2e/suites/unmanaged/unmanaged_CAPI_quick_test.go:47
[1] STEP: Creating a namespace for hosting the "rover-test" test spec
[1] INFO: Creating namespace rover-test-4rtuum
[1] INFO: Creating event watcher for namespace "rover-test-4rtuum"
[1] STEP: Dumping all the Cluster API resources in the "rover-test-4rtuum" namespace
[2] STEP: Setting environment variable: key=AWS_AVAILABILITY_ZONE_1, value=us-west-2a
[2] STEP: Setting environment variable: key=AWS_AVAILABILITY_ZONE_2, value=us-west-2b
[2] STEP: Setting environment variable: key=AWS_REGION, value=us-west-2
[2] STEP: Setting environment variable: key=AWS_SSH_KEY_NAME, value=cluster-api-provider-aws-sigs-k8s-io
[2] 
[2] JUnit report was created: /Users/chumich/go/sigs.k8s.io/rover-test/_artifacts/junit.e2e_suite.2.xml
[2] 
[2] Ran 0 of 0 Specs in 103.956 seconds
[2] SUCCESS! -- 0 Passed | 0 Failed | 0 Pending | 0 Skipped
[2] PASS
[1] STEP: Dumping all EC2 instances in the "rover-test-4rtuum" namespace
[1] STEP: Deleting all clusters in the "rover-test-4rtuum" namespace with intervals ["20m" "10s"]
[1] STEP: Deleting namespace used for hosting the "" test spec
[1] INFO: Deleting namespace rover-test-4rtuum
[1] •folder created for eks clusters: /Users/chumich/go/sigs.k8s.io/rover-test/_artifacts/clusters/bootstrap/aws-resources
[1] STEP: Tearing down the management cluster
[1] 
[1] JUnit report was created: /Users/chumich/go/sigs.k8s.io/rover-test/_artifacts/junit.e2e_suite.1.xml
[1] 
[1] Ran 1 of 1 Specs in 107.115 seconds
[1] SUCCESS! -- 1 Passed | 0 Failed | 0 Pending | 0 Skipped
[1] PASS

Ginkgo ran 1 suite in 1m58.075212869s
Test Suite Passed
      118.13 real        26.96 user        18.12 sys

```
