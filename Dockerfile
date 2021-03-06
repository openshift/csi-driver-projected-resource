FROM registry.ci.openshift.org/ocp/builder:rhel-8-golang-1.16-openshift-4.8 AS builder
WORKDIR /go/src/github.com/openshift/csi-driver-projected-resource
COPY . .
RUN make build

FROM registry.ci.openshift.org/ocp/builder:rhel-8-base-openshift-4.8
COPY --from=builder /go/src/github.com/openshift/csi-driver-projected-resource/_output/csi-driver-projected-resource /usr/bin/
ENTRYPOINT []
CMD ["/usr/bin/csi-driver-projected-resource"]