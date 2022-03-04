NAME = test_AWScodebuild

make install:
	pip install --upgrade pip && pip install -r requirements.txt 

make lint:
	black .

make test:
	py -m pytest