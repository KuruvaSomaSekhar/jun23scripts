dict = {
    "Name" : "Somu",
    "Age"  : 30,
    "members" : 30,
    "Age" : 50,
    "Profession" : "Software",
    "movies" : ["Tagoor","Jai","ABCD"]
}

# print(type(dict))
# print(dict)
# print(dict.keys())
# # print(dict.values())
# print(type(dict["Name"]))
# print(type(dict.get("Age")))
# print(type(dict.get("movies")))
# print(dict.items())
# print(len(dict))

print(dict)
#dict["Name"] = "Ramu"
dict.pop("movies")
print(dict)