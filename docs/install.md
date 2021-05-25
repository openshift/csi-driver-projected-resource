# Installing the Projected Resource CSI driver

## Before you begin

1. You must have an OpenShift cluster running 4.8 or later.

1. Grant `cluster-admin` permissions to the current user.

## Installing from a local clone of this repository (only developer preview level support)

1. Run the following command

```bash
# change directories into you clone of this repository, then
./deploy/deploy.sh
```

You should see an output similar to the following printed on the terminal showing the creation or modification of the various
Kubernetes resource:

```shell
deploying hostpath components
   ./deploy/0000_10_projectedresource.crd.yaml
oc apply -f ./deploy/0000_10_projectedresource.crd.yaml
customresourcedefinition.apiextensions.k8s.io/shares.projectedresource.storage.openshift.io created
   ./deploy/00-namespace.yaml
oc apply -f ./deploy/00-namespace.yaml
namespace/csi-driver-projected-resource created
   ./deploy/01-service-account.yaml
oc apply -f ./deploy/01-service-account.yaml
serviceaccount/csi-driver-projected-resource-plugin created
   ./deploy/02-cluster-role.yaml
oc apply -f ./deploy/02-cluster-role.yaml
clusterrole.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
   ./deploy/03-cluster-role-binding.yaml
oc apply -f ./deploy/03-cluster-role-binding.yaml
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-privileged unchanged
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create unchanged
   ./deploy/csi-hostpath-driverinfo.yaml
oc apply -f ./deploy/csi-hostpath-driverinfo.yaml
csidriver.storage.k8s.io/csi-driver-projected-resource.openshift.io created
   ./deploy/csi-hostpath-plugin.yaml
oc apply -f ./deploy/csi-hostpath-plugin.yaml
service/csi-hostpathplugin created
daemonset.apps/csi-hostpathplugin created
16:21:25 waiting for hostpath deployment to complete, attempt #0
```

## Installing from the master branch of this repository (only developer preview level support)

1. Run the following command

```bash
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/00-namespace.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/0000_10_projectedresource.crd.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/01-service-account.yaml 
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/02-cluster-role.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/03-cluster-role-binding.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/csi-hostpath-driverinfo.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/master/deploy/csi-hostpath-plugin.yaml 
```

You should see an output similar to the following printed on the terminal showing the creation or modification of the various
Kubernetes resource:

```shell
namespace/csi-driver-projected-resource created
customresourcedefinition.apiextensions.k8s.io/shares.projectedresource.storage.openshift.io created
serviceaccount/csi-driver-projected-resource-plugin created
clusterrole.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-privileged created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
csidriver.storage.k8s.io/csi-driver-projected-resource.openshift.io created
service/csi-hostpathplugin created
daemonset.apps/csi-hostpathplugin created
```


## Installing from a release specific branch of this repository (only developer preview level support)

1. Run the following command

```bash
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/00-namespace.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/0000_10_projectedresource.crd.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/01-service-account.yaml 
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/02-cluster-role.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/03-cluster-role-binding.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/csi-hostpath-driverinfo.yaml
oc apply -f --filename https://raw.githubusercontent.com/openshift/csi-driver-projected-resource/release-4.8/deploy/csi-hostpath-plugin.yaml 
```

You should see an output similar to the following printed on the terminal showing the creation or modification of the various
Kubernetes resource:

```shell
namespace/csi-driver-projected-resource created
customresourcedefinition.apiextensions.k8s.io/shares.projectedresource.storage.openshift.io created
serviceaccount/csi-driver-projected-resource-plugin created
clusterrole.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-privileged created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
csidriver.storage.k8s.io/csi-driver-projected-resource.openshift.io created
service/csi-hostpathplugin created
daemonset.apps/csi-hostpathplugin created
```


## Installing from the release page  (only developer preview level support)

Follow the instructions for any of the releases listed on [the Releases page](https://github.com/openshift/csi-driver-projected-resource/releases) that you are interested in, starting with release 'v0.4.8-rc.0'

NOTE:  the 'intro-blog-post' tag does not have a single 'release.yaml' file to install from.

After following those instructions, you should see an output similar to the following printed on the terminal showing the creation or modification of the various
Kubernetes resource:

```shell
namespace/csi-driver-projected-resource created
customresourcedefinition.apiextensions.k8s.io/shares.projectedresource.storage.openshift.io created
serviceaccount/csi-driver-projected-resource-plugin created
clusterrole.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-privileged created
clusterrolebinding.rbac.authorization.k8s.io/projected-resource-secret-configmap-share-watch-sar-create created
csidriver.storage.k8s.io/csi-driver-projected-resource.openshift.io created
service/csi-hostpathplugin created
daemonset.apps/csi-hostpathplugin created
```


## Validate the installation

First, let's validate the deployment.  Ensure all expected pods are running for the driver plugin, which in a
3 node OCP cluster will look something like:

```shell
$ oc get pods -n csi-driver-projected-resource
NAME                       READY   STATUS    RESTARTS   AGE
csi-hostpathplugin-c7bbk   2/2     Running   0          23m
csi-hostpathplugin-m4smv   2/2     Running   0          23m
csi-hostpathplugin-x9xjw   2/2     Running   0          23m
```
