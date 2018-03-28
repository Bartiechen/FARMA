

# Farma
Ferramenta de Autoria para a Remediação de erros com Mobilidade na Aprendizagem.

## Pré-requisitos

```
nodejs
libpq-dev
postgresql
postgresql-contrib
```
## Instalação

 Clone o repositório do projeto utilizando o comando
 

 - `git clone https://github.com/dmarczal/FARMA.git`

 Instalar as gems necessárias
   

 - Executar `gem bundler install`
 - Executar `bundle install`

 Configure as váriaveis de ambiente    
```
    export GMAIL_USERNAME=username
    export GMAIL_PASSWORD=senha

    export FARMA_DATABASE_USERNAME=username
    export FARMA_DATABASE_PASSWORD=senha

```
 Instalar Yarn
 - Atualizar NodeJs
   - Executar `sudo npm cache clean -f`
   - Executar `sudo npm install -g n`
   - Executar `sudo n stable`
 
 - Yarn
   - Executar `yarn install`

`  

 Crie banco e as tabelas do banco de dados

 - Executar `rails db:create`
 - Executar `rails db:migrate`

 
 Criar as páginas Sobre e Contato

 - Executar o comando  `rails db:seed`

 Levante o servidor e acesse a aplicação

 - Execute  `rails s`
 -   Acesse a  [FARMA](http://localhost:3000/)

## Documentação

## Suporte

## Contribua

Para contribuir com o projeto use o sistema de Pull Request

## Contribuidores

## Copyright

FARMA está cobre a  [licença do MIT](http://opensource.org/licenses/MIT).
