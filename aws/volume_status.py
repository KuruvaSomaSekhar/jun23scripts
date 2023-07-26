import boto3

client = boto3.client('ec2')

vol_id = "vol-0164efea0dd4d1355"
response = client.describe_volumes( VolumeIds=[vol_id])

#print(response)
print(response["Volumes"][0]["State"])

