# Kubernetes
The purpose of this Folder is to document some of the useful install instructions for kubernetes.
# Files:
## kubeadm
### Uses
This file is to detail the instructions for setting up kubeadm inside of AWS. Specifically in an AWS ec2 instance with an os of amizon linux. Amazon's ami has significant problems with gpg keys so this will help to get around some of those issues.
## aws.yaml
### Uses
this is a sample config file for aws, it has some configuration elements for what can be used to allow the cluster to talk to aws and do things like create loadbalancers.
The only configuration needed for the file to work is to replace all of the x.x.x.x with the internal ip of your server which will likely be a 10.0.1.xxx that you can find in the AWS admin console.
