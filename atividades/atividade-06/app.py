from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import sqlite3

# Criação do banco de dados e da tabela
def create_db():
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS TB_ALUNO (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            aluno_nome TEXT(50) NOT NULL,
            endereco TEXT(100) NOT NULL
        )
    ''')
    conn.commit()
    conn.close()

create_db()

app = FastAPI()

class Aluno(BaseModel):
    aluno_nome: str
    endereco: str

@app.post("/criar_aluno/")
def criar_aluno(aluno: Aluno):
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('''
        INSERT INTO TB_ALUNO (aluno_nome, endereco) VALUES (?, ?)
    ''', (aluno.aluno_nome, aluno.endereco))
    conn.commit()
    conn.close()
    return {"message": "Aluno criado com sucesso"}

@app.get("/listar_alunos/")
def listar_alunos():
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM TB_ALUNO')
    alunos = cursor.fetchall()
    conn.close()
    return alunos

@app.get("/listar_um_aluno/{id}")
def listar_um_aluno(id: int):
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM TB_ALUNO WHERE id = ?', (id,))
    aluno = cursor.fetchone()
    conn.close()
    if aluno:
        return aluno
    else:
        raise HTTPException(status_code=404, detail="Aluno não encontrado")

@app.put("/atualizar_aluno/{id}")
def atualizar_aluno(id: int, aluno: Aluno):
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('''
        UPDATE TB_ALUNO SET aluno_nome = ?, endereco = ? WHERE id = ?
    ''', (aluno.aluno_nome, aluno.endereco, id))
    conn.commit()
    conn.close()
    return {"message": "Aluno atualizado com sucesso"}

@app.delete("/excluir_aluno/{id}")
def excluir_aluno(id: int):
    conn = sqlite3.connect('dbalunos.db')
    cursor = conn.cursor()
    cursor.execute('DELETE FROM TB_ALUNO WHERE id = ?', (id,))
    conn.commit()
    conn.close()
    return {"message": "Aluno excluído com sucesso"}