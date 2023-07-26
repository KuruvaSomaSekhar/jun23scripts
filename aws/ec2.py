import boto3

allprivate = []
client = boto3.client('ec2')
response = client.describe_instances()
print(type(response))
#print(response)
Reservations = response.get("Reservations")[0]
print(type(Reservations))
instances = Reservations.get("Instances")

print(type(instances))

for items in instances:
    #print(items.get("PrivateIpAddress"))
    allprivate.append(items.get("PrivateIpAddress"))
    if items.get("State").get("Name") == "running":
        print(items["NetworkInterfaces"][0]["Association"]["PublicIp"])