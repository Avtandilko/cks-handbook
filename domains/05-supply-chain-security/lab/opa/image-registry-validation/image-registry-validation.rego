package kubernetes.admission

deny[msg] {
  input.request.kind.kind == "Pod"
  image := input.request.object.spec.containers[_].image
  startswith(image, "quay.io/")
  msg := sprintf("image '%v' comes from untrusted registry", [image])
}