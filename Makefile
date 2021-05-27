build:
	python3 setup.py sdist
	pip3 install twine
	twine upload dist/*

clean:
	rm dist/*
	rm gearai.egg-info/*

test:
	python3 setup.py sdist
	pip3 install twine
	twine upload --repository testpypi dist/*