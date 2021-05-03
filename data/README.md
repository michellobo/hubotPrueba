# devops-modulo-final

#### Estructura de la data

````json
{
  "nombre": "Kameko",
  "edad": 29,
  "genero": "M",
  "ejercicioPorSemana": 1,
  "tieneTrabajo": true
}
````

#### Crear data

- Generar la data en https://www.generatedata.com/
- Descargarla en formato json simple

#### Procesar la data usando python

- Usar python para generar índices necesarios por dev tools de kibana

- Generar índices por cada registro generado en https://www.generatedata.com/

```
python crearIndices.py
```

- Mezclar la data descarga desde generatedata.com

````
python mixear.py
````

- Copiar el contenido del archivo del bulk.txt y usarlo en DevTools de kibana

#### Importar data en Kibana Devs Tools

##### Borrar data

```
DELETE /deporte
```

##### Parsear columnas

```json
PUT /deporte
{
  "mappings": {
    "properties": {
      "nombre": {"type": "text"},
      "tieneTrabajo": {"type": "boolean"},
      "genero": {"type": "text"},
      "edad": {"type": "integer"},
      "ejercicioPorSemana": {"type": "integer"}
    }
  }
}
```

##### Cargar la data

````json
POST /deporte/_bulk
{"index": {"_id": 0}}
{"edad": 21, "nombre": "Nadine", "genero": "M", "ejercicioPorSemana": 3, "tieneTrabajo": true}
{"index": {"_id": 1}}
{"edad": 32, "nombre": "Lunea", "genero": "F", "ejercicioPorSemana": 7, "tieneTrabajo": false}
//....
````

