# web-jumphost

Extension of ttypd adding some tools (ssh, curl, awscli) to be used as a jump host

Available on Docker Hub

```
docker pull richardjkendall/web-jumphost
```

# Terraform Module

If you want to deploy this on ECS along with a reverse proxy (which also does Open IDC auth) you can use the terraform module I've already built: https://github.com/richardjkendall/tf-modules/tree/master/modules/web-jumphost

# TODO

This version allows the console user to use sudo.  I wanted to make this depend on an environment variable called ALLOW_SUDO, but I could not make this work.  I've left the start of that work in the repo.  If I get time I'll return to this and fix it up.
