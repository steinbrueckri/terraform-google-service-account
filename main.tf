resource "google_service_account" "default" {
  project      = "${var.project_id}"
  account_id   = "${var.account_id}"
  display_name = "${var.display_name}"
}

resource "google_project_iam_member" "default" {
  project = "${var.project_id}"
  count  = "${length(var.roles)}"
  role   = "${element(var.roles, count.index)}"
  member = "serviceAccount:${google_service_account.default.email}"
}

resource "google_service_account_key" "default" {
  project            = "${var.project_id}"
  depends_on         = ["google_service_account.default"]
  service_account_id = "${google_service_account.default.name}"
}
