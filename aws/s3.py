import boto3


mybuckets = []

client = boto3.client('s3')
response = client.list_buckets()


print(type(response))
print(type(response.get("ResponseMetadata")))
print(type(response["Buckets"]))
bucket = response["Buckets"]
#print(bucket)
print(len(bucket))

for item in bucket:
    print(item.get("Name"))
    mybuckets.append(item.get("Name"))


print("My bucket list is : ", mybuckets)