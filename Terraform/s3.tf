# S3 Bucket storing logs

resource "aws_s3_bucket" "simple-web-app-logs" {
  bucket = "jigs-simple-web-app-logs"
  acl = "private"
}

# S3 Bucket storing jenkins user data

resource "aws_s3_bucket" "jenkins-config" {
  bucket = "jigs-jenkins-config"
  acl = "private"
}