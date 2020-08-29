# Seccomp

## Overview

Seccomp (Secure Computing Mode) is a Linux kernel mechanism that lets you restrict the system calls a process can use.

Stable in Kubernetes 1.19 ([https://sysdig.com/blog/whats-new-kubernetes-1-19/](https://sysdig.com/blog/whats-new-kubernetes-1-19/))

How to set seccomp profile for pod:

* Before 1.19 - annotation `seccomp.security.alpha.kubernetes.io/pod`
* 1.19+ - `securityContext` section:

    ```yaml
    securityContext:
      seccompProfile:
        type:
    ```

seccompProfile types:

* unconfined (default)
* runtime/default
* localhost/\<path\>

## Resources

* [seccompProfile usage in PSP](https://kubernetes.io/docs/concepts/policy/pod-security-policy/#seccomp)
* [A seccomp overview](https://lwn.net/Articles/656307/)
* [Restrict a Container's Syscalls with Seccomp](https://kubernetes.io/docs/tutorials/clusters/seccomp/)
* [Containers and Security: Seccomp](https://blog.selectel.com/containers-security-seccomp/)
* [Seccomp security profiles for Docker](https://docs.docker.com/engine/security/seccomp/)
* [Lab: Seccomp](https://github.com/docker/labs/tree/master/security/seccomp)
* [Seccomp in Kubernetes — Part I: 7 things you should know before you even start!](https://itnext.io/seccomp-in-kubernetes-part-i-7-things-you-should-know-before-you-even-start-97502ad6b6d6)
* [Seccomp in Kubernetes — Part 2: Crafting custom seccomp profiles for your applications](https://itnext.io/seccomp-in-kubernetes-part-2-crafting-custom-seccomp-profiles-for-your-applications-c28c658f676e)
* [Seccomp in Kubernetes — Part 3: The new syntax plus some Advanced topics](https://itnext.io/seccomp-in-kubernetes-part-3-the-new-syntax-plus-some-advanced-topics-95dd3835263a)