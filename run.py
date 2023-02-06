import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config

for param in sys.argv[1:]:
    # comandos para rodar todas as suites de testes web:
    # comando a ser usado python run.py -web
    if param == "-web":
        command = "robot -d ./evidencias ./automacao_web/testes "
    # comando para rodar a suite de testes de login:
    # comando a ser usado python run.py -login
    elif param == "-cadastro_web":
        command = "robot -d ./evidencias ./automacao_web/testes/teste.robot "

os.system(command)
