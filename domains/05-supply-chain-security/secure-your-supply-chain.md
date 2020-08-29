# Secure your supply chain

## Whitelist allowed image registries

### OPA

See `image-registry-validation` lab

## Sign and validate images

## Tools

### Open Policy Agent

The Open Policy Agent (OPA, pronounced “oh-pa”) is an open source, general-purpose policy engine that unifies policy enforcement across the stack. OPA provides a high-level declarative language that let’s you specify policy as code and simple APIs to offload policy decision-making from your software. You can use OPA to enforce policies in microservices, Kubernetes, CI/CD pipelines, API gateways, and more.

[Open Policy Agent](https://www.openpolicyagent.org/)

### Docker Content Trust

Docker Content Trust (DCT) provides the ability to use digital signatures for data sent to and received from remote Docker registries. These signatures allow client-side or runtime verification of the integrity and publisher of specific image tags.

Through DCT, image publishers can sign their images and image consumers can ensure that the images they pull are signed. Publishers could be individuals or organizations manually signing their content or automated software supply chains signing content as part of their release process.

[Docker Content Trust](https://docs.docker.com/engine/security/trust/content_trust/)

### The Update Framework

The Update Framework (TUF) helps developers maintain the security of software update systems, providing protection even against attackers that compromise the repository or signing keys. TUF provides a flexible framework and specification that developers can adopt into any software update system.

[The Update Framework](https://theupdateframework.io/)

### Notary

Notary is a tool for publishing and managing trusted collections of content. Publishers can digitally sign collections and consumers can verify integrity and origin of content. This ability is built on a straightforward key management and signing interface to create signed collections and configure trusted publishers.

With Notary anyone can provide trust over arbitrary collections of data. Using The Update Framework (TUF) as the underlying security framework, Notary takes care of the operations necessary to create, manage, and distribute the metadata necessary to ensure the integrity and freshness of your content.

* [Notary](https://docs.docker.com/notary/)
* [Notary GitHub Repository](https://github.com/theupdateframework/notary)

### Connaisseur

Connaisseur uses the already existing Docker Content Trust solution and adds it to the cluster as a mutating admission controller. It pulls trust data from Notary and verifies it before any commitment to Kubernetes happens.

[Connaisseur](https://github.com/sse-secure-systems/connaisseur)

## Resources

* [Using Admission Controllers](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/)
* [OPA Example](https://www.openpolicyagent.org/docs/latest/kubernetes-primer/)
* [OPA Overview](https://www.openpolicyagent.org/docs/latest/#overview)
* [OPA Kubernetes Introduction](https://www.openpolicyagent.org/docs/latest/kubernetes-introduction/)
* [OPA Tutorial: Ingress Validation](https://www.openpolicyagent.org/docs/latest/kubernetes-tutorial/)
* [Ensure Content Trust on Kubernetes using Notary and Open Policy Agent](https://medium.com/@siegert.maximilian/ensure-content-trust-on-kubernetes-using-notary-and-open-policy-agent-485ab3a9423c)
* [TUF | Security](https://theupdateframework.io/security/)
* [Container Image Signatures in Kubernetes](https://medium.com/sse-blog/container-image-signatures-in-kubernetes-19264ac5d8ce)
* [Intro: TUF / Notary - Justin Cappos, NYU & Justin Cormack, Docker](https://www.youtube.com/watch?v=gIFRQObHbZk)
