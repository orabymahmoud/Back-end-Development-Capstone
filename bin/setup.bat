@echo off

echo "****************************************"
echo " Setting up Capstone Environment"
echo "****************************************"

echo "Checking the Python version..."
python --version

echo "Creating a Python virtual environment"
python -m venv backend-django-venv

pip install -r requirements.txt


echo "Installing Python depenencies..."
call backend-django-venv\Scripts\activate.bat 
python -m pip install --upgrade pip wheel
call backend-django-venv\Scripts\activate


echo "****************************************"
echo "Setup Complete Capstone Environment connection variables"
echo "****************************************"

@REM set MONGODB_SERVICE=localhost
@REM set MONGODB_USERNAME=localhost
@REM set MONGODB_PASSWORD=27017


@REM echo "Starting Flask application..."
@REM flask --app app run --debugger --reload