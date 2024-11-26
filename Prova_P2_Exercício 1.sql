-- Criação da tabela necessária para a realização das tarefas 
-- Exercício 1 -- Observando a inserção de uma chave primária (de auto incremento)
CREATE TABLE student_prediction (
    id SERIAL PRIMARY KEY,
    studentid VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender INT NOT NULL,
    scholarship INT NOT NULL,
    study_hrs INT NOT NULL,
    cuml_gpa INT NOT NULL,
    exp_gpa INT NOT NULL,
    grade INT NOT NULL
);
