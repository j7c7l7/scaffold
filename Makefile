install: 
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
format:
	black *.py	
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py

# comando para todar uma lista de comandos que ja foi declarada aqui dentro.
# por ex: 'make all' roda 'make install', 'make lint' e 'make test' de uma soh vez
all: install lint test
	
# para utilizar esse arquivo, digita: make install	