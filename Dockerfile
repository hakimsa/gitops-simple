FROM node:16

# Directorio de trabajo
WORKDIR /usr/src/app

# Instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar toda la app (subcarpetas incluidas)
COPY app/ ./

# Exponer puerto
EXPOSE 8088

# Ejecutar la app
CMD [ "node", "index.js" ]
