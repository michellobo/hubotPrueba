# app

 Actividad final de Hubot en Diplomado DevOps Usach.

## Data

- Carpeta Data
- La data usada en kibana corresopnde al archivo bulk.txt
- Instrucciones para cargar la data en data/README.md

## Aplicación

### Requerimientos

- NodeJs
- Yeoman
- Tener generator de hubot: https://github.com/hubotio/generator-hubot
- Disponer de una cuenta en Slack y agregar Hubot
- Generar un token de autentificación para Slack


### Inicio

- Entrar a la carpeta de la aplicación

```bash
cd app
```

- Instalar dependencias

```bash
npm install
```

### Ejecución

- Se puede ejcutar manual o vía npm:
- Ejecutar manualmente 

```bash
HUBOT_SLACK_TOKEN=TOKENACA ./bin/hubot --adapter slack
```

- Ejecutar via npm

```bash
npm start
```

## URL Repo

- Rama main
- https://github.com/michellobo/hubotPrueba