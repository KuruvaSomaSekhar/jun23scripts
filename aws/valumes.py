import boto3

client = boto3.client('ec2')
response = client.describe_volumes()
#print(response)
vol = response.get("Volumes")
print(type(vol))
for data in vol:
    #print(data.get("State"))
    if data.get("State") == "available":
        print(data["VolumeId"])
        response = client.delete_volume(VolumeId=data["VolumeId"])
        print(response)