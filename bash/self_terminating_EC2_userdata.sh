#! /bin/sh

# kick off the job here and wait for it to complete

# terminate EC2 instance once the job is complete
aws ec2 terminate-instance --instance-ids `curl http://169.254.169.254/latest/meta-data/instance-id`