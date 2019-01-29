output "iam_s3_key" {
  value = "${module.s3.iam_s3_key}"
}

output "iam_s3_secret" {
  value = "${module.s3.iam_s3_secret}"
}

output "s3_id" {
  value = "${module.s3.s3_id}"
}
