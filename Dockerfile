# Usa una imagen base oficial de Python (puedes cambiarla según tu proyecto)
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que corre la aplicación (ajústalo según tu proyecto)
EXPOSE 8000

# Comando por defecto para ejecutar la aplicación (ajústalo según tu proyecto)
CMD ["python", "app.py"]    