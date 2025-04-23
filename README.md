# Análisis de Datos de Spotify

Este proyecto contiene un análisis exploratorio de datos (EDA) de canciones de Spotify organizadas por décadas.

## Requisitos

- Python 3.8 o superior
- Si está usando Python 3.12, los scripts instalarán automáticamente las dependencias necesarias para manejar las diferencias con versiones anteriores

## Configuración del Entorno

### Linux
```bash
# Dar permisos de ejecución al script
chmod +x setup_linux.sh

# Ejecutar el script
./setup_linux.sh
```

El script creará un entorno virtual, lo activará, instalará las dependencias necesarias (incluyendo setuptools en caso de Python 3.12) y proporcionará instrucciones para futuros usos.

### Windows
```
# Ejecutar el script haciendo doble clic o desde CMD:
setup_windows.bat
```

El script creará un entorno virtual, lo activará, detectará si estás usando Python 3.12 para instalar setuptools si es necesario, e instalará todas las dependencias.

### macOS
```bash
# Dar permisos de ejecución al script
chmod +x setup_mac.sh

# Ejecutar el script
./setup_mac.sh
```

Funciona de manera similar al script de Linux, creando y configurando el entorno virtual con todas las dependencias necesarias.

## Inicio Rápido del Notebook (Linux)

Para iniciar el notebook de Jupyter directamente (después de la configuración inicial), puedes usar:

```bash
# Dar permisos de ejecución si es la primera vez
chmod +x start_notebook_linux.sh

# Ejecutar el notebook
./start_notebook_linux.sh
```

Este script activa automáticamente el entorno virtual e inicia el servidor de Jupyter Notebook.

## Activación Manual del Entorno

Si prefieres configurar el entorno manualmente:

1. Crear entorno virtual:
   - Linux/macOS: `python3 -m venv env`
   - Windows: `python -m venv env`

2. Activar entorno virtual:
   - Linux/macOS: `source env/bin/activate`
   - Windows: `env\Scripts\activate.bat`

3. Si estás usando Python 3.12:
   - `pip install setuptools`

4. Instalar dependencias:
   - `pip install -r requirements.txt`

5. Ejecutar Jupyter Notebook:
   - `jupyter notebook`

## Solución de Problemas

Si encuentras errores durante la instalación:

1. **Error "No module named 'distutils'"**: Este error aparece en Python 3.12. El script debería manejarlo, pero si ocurre manualmente:
   ```
   pip install setuptools
   ```

2. **Conflictos de versiones**: Las dependencias usan versiones mínimas en lugar de específicas para mayor compatibilidad. Si experimentas problemas, puedes instalar versiones específicas.

## Contenido

- `TPI.ipynb`: Notebook con el análisis exploratorio de datos
- `requirements.txt`: Dependencias del proyecto
- Scripts de configuración para diferentes sistemas operativos
- `start_notebook_linux.sh`: Script para iniciar rápidamente el notebook en Linux