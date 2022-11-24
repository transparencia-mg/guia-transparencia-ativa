# Guia de Transparência Ativa

O Guia de Transparência Ativa é uma compilação de obrigações cujo objetivo é auxiliar no correto cumprimento da Lei nº 12.527, de 18 de novembro de 2011 - Lei de Acesso à Informação (LAI) e demais normas que regem o assunto.

Veja como participar [aqui](CONTRIBUTING.md).

## Setup :open_book:

O setup windows poderá ser realizado via:

```Python
$ git clone https://github.com/transparencia-mg/guia-transparencia-ativa.git
$ cd guia-transparencia-ativa  
$ python -m venv venv
$ source venv/Scripts/activate
$ pip install -r requirements.txt
```

O setup linux poderá ser realizado via:

```Python
$ git clone https://github.com/transparencia-mg/guia-transparencia-ativa.git
$ cd guia-transparencia-ativa  
$ make setup
$ source venv/bin/activate
```

Obs.: Usuários linux poderão utilizar comandos `make`, consulte as opções disponíveis em via comando `make help`.
Check automated tasks with `make` or `make help` comands.

Comando `mkdocs serve` cria servidor local para visualização, em tempo real, das modificações realizadas no documento.

## Publicações de novas versões do documento

Versionamento desta documentação foi criada utilizando a biblioteca [mike](https://github.com/jimporter/mike), conforme orientações [material mkdocs](https://squidfunk.github.io/mkdocs-material/setup/setting-up-versioning/?h=version#versioning). 
[Exemplo de implementação](https://squidfunk.github.io/mkdocs-material-example-versioning/0.3/) e o [repositório de origem](https://github.com/squidfunk/mkdocs-material-example-versioning) também podem ser utilizados como referência.
Actions para publicação da documentação `dev` foi criado para facilitar o processo de deploy da documentação que está sendo constantemente atualizada.
Ao final de toda sprint publicação da nova versão (latest) deverá ser realizada manualmente via:

```
$ git checkout gh-pages
$ git pull origin gh-pages
$ mike deploy --push --update-aliases <minor>.<major> latest
```
Confira também o [issue](https://github.com/transparencia-mg/work-stefanini/issues/17) utilizado para documentar processo de versionamento em outro projeto.

Visualização local da documentação versionada poderá ser feita via comando `mike serve`

## Contribuições

Encontrou algo errado ou gostaria de enviar alguma sugestão. 
Abra um [Issue](https://github.com/transparencia-mg/guia-transparencia-ativa/issues) para nós.
