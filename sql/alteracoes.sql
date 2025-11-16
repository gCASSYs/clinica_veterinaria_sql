USE clinica_veterinaria;

UPDATE tutor 
SET telefone = '(11)99999-1111' 
WHERE id_tutor = 1;

UPDATE veterinario 
SET especialidade = 'Clínico Geral e Dermatologia' 
WHERE id_veterinario = 2;

UPDATE consulta
SET valor_total = valor_total - 20
WHERE id_consulta = 3;


DELETE FROM consulta_servico WHERE id_consulta = 3;
DELETE FROM consulta WHERE id_consulta = 3;

DELETE FROM consulta_servico WHERE id_servico = 3;
DELETE FROM servico WHERE id_servico = 3;

INSERT INTO animal VALUES (99,'Teste','Gato','SRD','2024-01-01',1);
DELETE FROM animal WHERE id_animal = 99;
