import boto3
ec2 = boto3.client('ec2')
def lambda_handler(event, context):
    ec2.request_spot_instances(
        SpotPrice='<max price for spot instance, ex. 0.1>',
        InstanceCount=1,
        Type='one-time',
        LaunchSpecification={
            'ImageId': '<ami id>',
            'KeyName': '<keypair to use>',
            'InstanceType': '<instance type, ex. "t2.micro">',
            'UserData': '<base64 encoded script goes here>',
            'IamInstanceProfile': {
                'Arn': '<instance role arn>' #make sure this role has terminate EC2 instance access
            },
            'SecurityGroupIds': ['<list of security group ids>']
        }
 )
