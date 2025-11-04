FROM node:18

# Directorio de trabajo
WORKDIR /usr/src/app

# Instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar toda la app (subcarpetas incluidas)
COPY app/ ./

# Exponer puerto
EXPOSE 8080

# Ejecutar la app
CMD [ "node", "app/index.js" ]
