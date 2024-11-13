# Usa una imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos necesarios
COPY main.py /app

# Instala las dependencias
RUN pip install fastapi uvicorn

# Expone el puerto en el que se ejecutará la API
EXPOSE 8000

# Comando para ejecutar la API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
