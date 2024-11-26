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

-- Exercício 2 -- Criação de um stored procedure que exibe o número de alunos aprovados e cujos pais são ambos PhDs

CREATE OR REPLACE FUNCTION count_approved_with_phd_parents()
RETURNS TABLE (
    approved_students_count INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT COUNT(*) AS approved_students_count
    FROM student_prediction
    WHERE 
        grade >= 5 
        AND mother_edu = 5 
        AND father_edu = 5; 
END;
$$ LANGUAGE plpgsql;
