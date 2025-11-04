# Usa una versión estable y soportada por Cloud Run
FROM node:18

# Directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiamos archivos de dependencias y las instalamos
COPY package*.json ./
RUN npm install

# Copiamos toda la carpeta "app" dentro del contenedor
COPY app ./app

# Exponemos el puerto que Cloud Run usará
EXPOSE 8080

# Comando para ejecutar la app (tu index está dentro de /app)
CMD ["node", "app/index.js"]
