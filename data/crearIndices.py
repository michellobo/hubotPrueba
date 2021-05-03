import json

indices = {}
with open('json/data.json') as json_file:
	data = json.load(json_file)
	i = 0
	indices["indices"] = []
	for item in data:
		indices["indices"].append({"index" : { "_id" : i }});
		i+=1

print indices

with open('json/indices.json', 'w') as outfile:
	json.dump(indices, outfile)