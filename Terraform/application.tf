module "application-server" {
  source = "./application-server"

  ami-id = "ami-0bcf5425cdc1d8a85" # AMI for an Amazon Linux instance for region: ap-south-1

  iam-instance-profile = aws_iam_instance_profile.simple-web-app.id
  key-pair = aws_key_pair.simple-web-app-key.key_name
  name = "Simple Web App"
  device-index = 0
  network-interface-id = aws_network_interface.simple-web-app.id
  repository-url = "repo URL"
}