# web-jumphost

Extension of ttypd adding some tools (ssh, curl, awscli) to be used as a jump host

Available on Docker Hub

```
docker pull richardjkendall/web-jumphost
```

# Terraform Module

If you want to deploy this on ECS along with a reverse proxy (which also does Open IDC auth) you can use the terraform module I've already built: https://github.com/richardjkendall/tf-modules/tree/master/modules/web-jumphost
