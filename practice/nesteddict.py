mydata = {
    "studnet1" : {
        "Name" : "Somu",
        "age" : 30
    },
        "studnet2" : {
        "Name" : "Ramu",
        "age" : 35
    },
        "studnet3" : {
        "Name" : "SriRam",
        "age" : 40
    },
    "student4" : ["Somu","Ramu","SriRam"]
}
# print(type(mydata))
# print(mydata.keys())
# print(mydata.values())
# print(mydata["studnet1"])
# print(mydata["studnet2"]["Name"])
# print(mydata.get("studnet3").get("Name"))
print(mydata.get("student4")[2])