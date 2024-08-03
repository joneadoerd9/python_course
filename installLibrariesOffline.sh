echo "Start unarchive libraries"
unzip -d libraries libraries.zip 

echo "Create virtual environment"
python -m venv env --prompt="tf-env"

echo "Activate virtual environment"
source env/Scripts/activate

echo "Install libraries"
pip install opencv-python --no-index --find-links libraries  
pip install matplotlib --no-index --find-links libraries
pip install pandas --no-index --find-links libraries
pip install numpy --no-index --find-links libraries
pip install scikit-learn --no-index --find-links libraries
pip install ipykernel --no-index --find-links libraries
pip install tensorflow --no-index --find-links libraries

echo "Done"
