import 
    std/httpclient,
    json

var client = newHttpClient()

var data = client.getContent("http://localhost:5000/api/users/")

var data2 = parseJson(data)

for i in data2:
    echo i["id"], ": ",  i["name"]