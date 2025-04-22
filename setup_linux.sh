#!/bin/bash

echo "Creando entorno virtual..."
python3 -m venv env

echo "Activando entorno virtual..."
source env/bin/activate

PYTHON_VERSION=$(python -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
if [[ "$PYTHON_VERSION" == "3.12" ]]; then
    echo "Detectada versión Python 3.12, instalando setuptools con soporte para distutils..."
    pip install setuptools
fi

echo "Instalando dependencias..."
pip install -r requirements.txt

echo "Entorno configurado exitosamente!"
echo "Para activar el entorno en el futuro, ejecutar: source env/bin/activate"
echo "Para iniciar Jupyter Notebook, ejecutar: jupyter notebook" 