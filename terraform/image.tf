resource "yandex_storage_object" "cat-picture" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = local.bucket_name
  key    = "image.png"
  source = "/home/vladm/devops-33-52/image.png"
  acl = "public-read"
  depends_on = [yandex_storage_bucket.loveyourvoice]
}