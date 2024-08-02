Write-Output "Start unarchive libraries"
Expand-Archive -Path libraries.zip -DestinationPath libraries

Write-Output "Create virtual environment"
python -m venv env --prompt="tf-env"

Write-Output "Activate virtual environment"
.\env\Scripts\Activate.ps1

Write-Output "Install libraries"
pip install opencv-python --no-index --find-links libraries  
pip install matplotlib --no-index --find-links libraries
pip install pandas --no-index --find-links libraries
pip install numpy --no-index --find-links libraries
pip install scikit-learn --no-index --find-links libraries
pip install ipykernel --no-index --find-links libraries
pip install tensorflow --no-index --find-links libraries

Write-Output "Done"
