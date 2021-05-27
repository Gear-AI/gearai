build:
	python3 setup.py sdist
	pip3 install twine
	twine upload dist/*

clean:
	rm dist/*
	rm gearai.egg-info/*

testpypi:
	python3 setup.py sdist
	pip3 install twine
	twine upload --repository testpypi dist/*

testlocal:
	pip3 uninstall gearai -y
	pip3 install -e

installtest:
	pip3 uninstall gearai -y
	pip3 install -i https://test.pypi.org/simple/ gearai

installpypi:
	pip3 uninstall gearai -y
	pip3 install gearai