provider "google" {
  credentials = "${file("account.json")}"
  project     = "cuba-on-kubernetes"
  region      = "europe-west2"
}
