echo "Activate current virtualenv"
source venv/bin/activate

echo "Clean up prev build and dist folders"
rm -rf build && rm -rf dist

echo "Create a new build"
python setup.py sdist bdist_wheel

echo "Upload current build"
python -m twine upload --skip-existing dist/*

echo "New release uploaded!"
