# Nombre del contenedor definido en docker-compose.yml
$containerName = "inventario_mysql"

# Nombre de la base de datos
$databaseName = "inventario_db"

# Archivos SQL a importar (deben estar dentro de la carpeta ./sql)
$files = @("init.sql", "inserts.sql", "sp.sql")

foreach ($file in $files) {
    # Write-Host "Copiando $file al contenedor..."
    docker cp "sql\$file" "${containerName}:/$file"

    # Write-Host "Ejecutando $file en MySQL..."
    docker exec -i $containerName sh -c "mysql -u root -proot $databaseName < /$file"
}

Write-Host "Base de datos inicializada correctamente, Puede continuar con la aplicación."
