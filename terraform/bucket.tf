locals {
  current_timestamp = timestamp()
  formatted_date = formatdate("DD-MM-YYYY", local.current_timestamp)
  bucket_name = "loveyourvoic-${local.formatted_date}"
}

resource "yandex_iam_service_account" "service" {
  folder_id = var.folder_id
  name      = "bucket-sa"
}

resource "yandex_resourcemanager_folder_iam_member" "bucket-editor" {
  folder_id = var.folder_id
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.service.id}"
  depends_on = [yandex_iam_service_account.service]
}

resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.service.id
  description        = "Static access key"
}


// Бакет с шифрованием kms.tf
resource "yandex_storage_bucket" "loveyourvoice" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = local.bucket_name
  acl    = "public-read-write"
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          kms_master_key_id = yandex_kms_symmetric_key.secret-key.id
          sse_algorithm     = "aws:kms"
        }
      }
    }
}