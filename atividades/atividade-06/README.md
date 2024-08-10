```markdown
# FastAPI Backend com SQLite3

Este repositório contém uma aplicação backend desenvolvida em Python utilizando o framework FastAPI e o banco de dados SQLite3. A aplicação permite gerenciar registros de alunos com operações de criação, leitura, atualização e exclusão (CRUD).

## Enunciado da Atividade-06

Desenvolva uma aplicação backend utilizando o framework FastAPI e o banco de dados SQLite3. A aplicação deve permitir gerenciar registros de alunos com operações de criação, leitura, atualização e exclusão (CRUD). A estrutura da tabela `TB_ALUNO` deve conter os seguintes campos:

- `id`: Chave primária do tipo inteiro com autoincremento.
- `aluno_nome`: String com tamanho máximo de 50 caracteres.
- `endereco`: String com tamanho máximo de 100 caracteres.

Implemente os seguintes endpoints:

1. **Criar Aluno**: Um endpoint para criar um novo registro de aluno.
2. **Listar Todos os Alunos**: Um endpoint para listar todos os registros de alunos.
3. **Listar um Aluno Específico**: Um endpoint para listar um registro de aluno específico pelo ID.
4. **Atualizar Aluno**: Um endpoint para atualizar um registro de aluno específico pelo ID.
5. **Excluir Aluno**: Um endpoint para excluir um registro de aluno específico pelo ID.

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `pararodar_isso.py`: Script para iniciar a aplicação.
- `dbalunos.db`: Banco de dados SQLite3.

## Como Executar

### 1. Instalar Dependências

Instale as dependências necessárias utilizando o pip:

```bash
pip install fastapi uvicorn
```

### 2. Executar a Aplicação

Para executar a aplicação, basta criar os arquivos `app.py` e `pararodar_isso.py` conforme mencionado. Em seguida, execute o script `pararodar_isso.py`.

### 3. Acessar a Documentação

Acesse `http://127.0.0.1:8000/docs` para visualizar a documentação automática gerada pelo FastAPI.

## Estrutura da Tabela

A tabela `TB_ALUNO` possui a seguinte estrutura:

- `id`: Chave primária do tipo inteiro com autoincremento.
- `aluno_nome`: String com tamanho máximo de 50 caracteres.
- `endereco`: String com tamanho máximo de 100 caracteres.

## Comandos para Interagir com a API

### Criar um Aluno

```bash
curl -X POST "http://127.0.0.1:8000/criar_aluno/" -H "Content-Type: application/json" -d '{"aluno_nome": "John Gilbert", "endereco": "123 Elm Street"}'
```

### Listar Todos os Alunos

```bash
curl -X GET "http://127.0.0.1:8000/listar_alunos/"
```

### Listar um Aluno Específico

```bash
curl -X GET "http://127.0.0.1:8000/listar_um_aluno/1"
```
(Substitua `1` pelo `id` do aluno que você deseja listar.)

### Atualizar um Aluno

```bash
curl -X PUT "http://127.0.0.1:8000/atualizar_aluno/1" -H "Content-Type: application/json" -d '{"aluno_nome": "John Gilbert Updated", "endereco": "456 Oak Avenue"}'
```
(Substitua `1` pelo `id` do aluno que você deseja atualizar.)

### Excluir um Aluno

```bash
curl -X DELETE "http://127.0.0.1:8000/excluir_aluno/1"
```
(Substitua `1` pelo `id` do aluno que você deseja excluir.)
