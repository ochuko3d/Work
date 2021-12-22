resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "${var.artifactbucket}-articifact-ochuko"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }

  # Neede for CloudWatch
  versioning {
    enabled = true
  }
}
output "artifactbucket" {
  value = aws_s3_bucket.codepipeline_artifacts.bucket
}
output "artifactbucketarn" {
  value = aws_s3_bucket.codepipeline_artifacts.arn
}