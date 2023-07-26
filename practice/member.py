team = ["Somu","Mastan","Junaid","Anusha","Satya","Sateesh"]
newmember = "Saketh"

# for member in team:
#     print(member)

if newmember in team:
    print("Member already exists")
else:
    print("Member does not exist")
    team.append(newmember)

print(team)
