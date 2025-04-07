provider "google" {
  project     = "extreme-tooling-455910-t0"  # 👈 Replace this
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_instance" "namboo-vm" {
  name         = "namboo-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
