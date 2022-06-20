## Instalação e configuração

Esse projeto utiliza o R versão 4.1.2 e o pacote [`renv`](https://rstudio.github.io/renv/articles/collaborating.html) para gerenciamento de dependências. Instale as dependências com

```R
renv::restore()
```

## Uso

Para construir o site HTML e os documentos `docx` e `pdf` execute na linha de comando:

```bash
make build
```

Os arquivos criados vão estar disponíveis na pasta `public/`. Depois de gerado, o conteúdo da pasta `public/` precisa ser manualmente commitado e feito push no branch `gh-pages` na pasta com a versão adequada.
