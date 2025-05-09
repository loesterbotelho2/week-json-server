FROM node:20.12.2-alpine

# Instala o json-server globalmente
RUN npm install -g json-server

# Cria diretório para os dados
WORKDIR /app

# Copia o arquivo db.json para dentro do container
COPY db.json /app/db.json

# Expõe a porta padrão do json-server
EXPOSE 8080

# Comando para rodar o json-server
CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "8080"]
