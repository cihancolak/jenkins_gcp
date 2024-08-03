resource "google_storage_bucket" "my-bucket" {
  name                     = "jenkins-1-project"
  project                  = "jumpbox-427107"
  location                 = "asia"
  force_destroy            = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket" "my-bucket2" {
  name                     = "jenkins-1-project2"
  project                  = "jumpbox-427107"
  location                 = "asia"
  force_destroy            = true
  public_access_prevention = "enforced"
}


