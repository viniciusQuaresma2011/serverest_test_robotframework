# serverest_test_robotframework
Projeto de automaçao em uma API REST de E-commerce de Produtos, utilizando Robot Framework(Scripts)

ATENÇÃO -> Projeto configurado para rodar em Container :D

1º Passo: Clonar o projeto -> Branch: master

git clone https://github.com/viniciusQuaresma2011/serverest_test_robotframework.git

2º Passo: Entrar na pasta do projeto

cd serverest_test_robotframework

3º Passo: Crie uma imagem docker

docker build -t testando .

4º Passo: Execute o comando para rodar o teste

docker run testando

5º Passo: acesse a pasta output e veja o resultado dos testes.
