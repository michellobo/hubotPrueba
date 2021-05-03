import json

with open('json/indices.json') as jsonIndices:
	dataIndices = json.load(jsonIndices)
	#print dataIndices

with open('json/data.json') as jsonData:
	dataJson = json.load(jsonData)
	#print dataJson

with open('json/bulk.txt', 'w') as outfile:
	indiceItem = 0;
	for item in dataJson:
		print item;
		outfile.write(json.dumps(dataIndices["indices"][indiceItem]));
		outfile.write("\n");
		outfile.write(json.dumps(item));
		outfile.write("\n");
		indiceItem+=1