# Projeto de Banco de Dados para a Faculdade Fictícia "Universidade Quantum"

## Índice

[Instalando o PostgreSQL](#Instalando-o-PostgreSQL)

[Instalando pgAdmin](#Instalando-pgAdmin)

[Criando o Schema do banco de dados](#Criando-o-Schema-do-banco-de-dados)

[Populando banco de dados](#Populando-banco-de-dados)

[Modelo Conceitual](#Modelo-Conceitual)

[Modelo Lógico](#Modelo-Lógico)

[Perguntas para Análise](#Perguntas-para-Analise)

[Trello](#Trello)


## Visão Geral
Este projeto de banco de dados foi desenvolvido para atender às necessidades da Universidade Quantum, uma faculdade fictícia dedicada à excelência acadêmica e ao fornecimento de uma ampla gama de cursos. O objetivo deste projeto é criar e gerenciar um sistema de banco de dados abrangente que aborde o registro de alunos, cursos, professores, matrículas e outras operações relacionadas à administração acadêmica.

## Conteúdo do Projeto
O projeto é estruturado em várias seções, cada uma delas relacionada a uma parte importante da administração acadêmica:

1. *Cadastro de Alunos:* Este módulo permite o registro detalhado de informações dos alunos, como nome, matrícula, contato e dados acadêmicos. Além disso, rastreia o histórico de cursos concluídos e notas dos alunos. 

2. *Registro de Professores:* Aqui, os dados dos professores, incluindo nome, qualificações e informações de contato, são registrados e associados aos cursos que ministram.

3. *Catálogo de Cursos:* Neste módulo, é possível criar uma lista de cursos oferecidos pela universidade, incluindo informações sobre horários, locais e pré-requisitos. 

4. *Matrículas e Inscrições:* Este módulo facilita o processo de inscrição dos alunos em cursos, acompanhando seu progresso acadêmico e permitindo a alocação de professores.

5. *Avaliações e Notas:* Permite o registro de notas de alunos em exames e avaliações, com a capacidade de calcular médias e determinar o desempenho acadêmico. 

## Objetivo
Este projeto de banco de dados é destinado a oferecer uma solução abrangente para a administração da Universidade Quantum. Ele visa facilitar o acompanhamento e a gestão dos alunos, cursos e professores, proporcionando uma ferramenta eficaz para manter registros precisos e gerar informações úteis para a tomada de decisões.

Os módulos apresentados são interdependentes, garantindo que a universidade possa administrar eficazmente suas operações acadêmicas e fornecer suporte aos alunos e professores.



## Instalando o PostgreSQL
Para baixar o postgresql acesse o link oficial: <a href="https://www.enterprisedb.com/downloads/postgres-postgresql-downloads">Download Postgresql</a>

Siga o passo a passo abaixo para instalar o postgreSql
<a href="https://geoone.com.br/instalacao-postgresql-postgis/">Passo a passo</a>

## Instalando pgAdmin
Para baixar o pgAdmin acesso o link oficial: <a href="https://www.postgresql.org/ftp/pgadmin/pgadmin4/v7.8/windows/">Download pgAdmin</a>

Siga o passo a passo abaixo para instalar o pgAdmin:
<a href="https://www.youtube.com/watch?v=Wx-mmyJ5OoY">Link do passo a passo</a>

## Criando o Schema do banco de dados
Com o pgAdmin instalado e conectado ao postgresql
O próximo passo é criar o banco de dados clicando com o botão direito do mouse em cima de
“Database” conforme a imagem abaixo

![image](https://github.com/Hexdien/Banco_de_Dados_Quantum/assets/130430133/1765f287-6550-4ea8-8beb-d4cb0efcf295)


Após isto, clicaremos com o botão direito do mouse na Database criada e clicaremos em Query
tool

![image](https://github.com/Hexdien/Banco_de_Dados_Quantum/assets/130430133/db42d5c6-3468-4c68-bb1d-d0f8c8cad8ab)

Abrirá uma nova aba, agora devemos clicar em Open File

![image](https://github.com/Hexdien/Banco_de_Dados_Quantum/assets/130430133/69fa88f8-ec02-40fa-86f4-60b737f6b4cc)

Primeiro abriremos o arquivo “Schema Unisuam.sql”

A seguir basta pressionar F5


Populando Banco de dados

## Populando banco de dados

Clicaremos novamente em Open File ou pressione ALT + O e agora abriremos o arquivo “Insert
Unisuam.sql”
Novamente basta pressionar a tecla F5 do seu teclado que todos os dados serão inseridos em
ordem



## Modelo Conceitual

O objetivo de um modelo conceitual de dados é fornecer uma perspectiva centrada em dados da organização, documentando como diferentes entidades empresariais se relacionam entre si. Isso muitas vezes é conseguido através de ERD (Diagramas de Registro de evento) e/ou modelos de função de objeto (ORM). 

![image](https://github.com/Hexdien/Banco_de_Dados_Quantum/assets/130430133/e9df742d-e229-4444-baf2-c15e7c20fefd)



## Modelo Lógico

Um modelo de dados lógico estabelece a estrutura dos elementos de dados e os relacionamentos entre eles. É independente do banco de dados físico que detalha como os dados serão implementados. O modelo de dados lógicos serve como um modelo para os dados usados. O modelo de dados lógico leva os elementos de modelagem de dados conceituais um passo adiante, adicionando mais informações a eles.

![image](https://github.com/Hexdien/Banco_de_Dados_Quantum/assets/130430133/db4dc67b-88a6-46b5-9d97-bba3301a897f)


## Perguntas para Analise 


-- Quais os alunos que estão cursando Medicina, quais suas turmas e professores

-- Em qual turma os alunos estão matriculados?

-- Quais são as disciplinas de físicas, quantas tem e quais suas cargas horarias?

-- Quais os professores que dão aula de Matemática ou Geografia da Faculdade Quantum 


## Trello

<a href="https://trello.com/b/WqiVoNTa/projeto-unisuam">Link para o Trello</a>
