@echo off
echo Creando entorno virtual...
python -m venv env

echo Activando entorno virtual...
call env\Scripts\activate.bat

rem Instalar distutils si es Python 3.12
python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')" > temp.txt
set /p PYTHON_VERSION=<temp.txt
del temp.txt
if "%PYTHON_VERSION%"=="3.12" (
    echo Detectada version Python 3.12, instalando setuptools con soporte para distutils...
    pip install setuptools
)

echo Instalando dependencias...
pip install -r requirements.txt

echo Entorno configurado exitosamente!
echo Para activar el entorno en el futuro, ejecutar: env\Scripts\activate.bat
echo Para iniciar Jupyter Notebook, ejecutar: jupyter notebook
pause 