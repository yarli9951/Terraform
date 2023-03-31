provider "google" {
    project = "scenic-flux-378201"
    credentials = "${file("gcp.json")}"
	region = "us-east1"
	zone = "southamerica-east1-a"
}