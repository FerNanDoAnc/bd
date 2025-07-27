🐬 MySQL con Docker

Este contenedor ejecuta una instancia de MySQL lista para desarrollo local. Está configurado con la última versión disponible (mysql:latest), y usa volúmenes para persistencia de datos.

📦 Requisitos
Docker instalado

Docker Compose

PowerShell (en Windows, o PowerShell Core en otros sistemas)

## 🚀 Instalación y Ejecución

### 1. Descargar imagen de MySQL
docker pull mysql

### 2. Levanta el contenedor:
docker-compose up -d

### 3. Verificar contenedor en ejecución
docker ps

### 4. Ejecutar scripts SQL de inicialización
.\setup-db.ps1

#### 5. Configura las variables de entorno:
   .env.example

### 6.🧪 Verificar conexión
Puedes usar alguna herramienta como:
   DBeaver
   MySQL Workbench
