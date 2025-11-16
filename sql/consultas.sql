USE clinica_veterinaria;

SELECT a.nome AS animal, a.especie, t.nome AS tutor
FROM animal a
JOIN tutor t ON a.id_tutor = t.id_tutor;

SELECT c.id_consulta, c.data_consulta, a.nome AS animal, v.nome AS veterinario
FROM consulta c
JOIN animal a ON a.id_animal = c.id_animal
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
ORDER BY c.data_consulta DESC
LIMIT 3;

SELECT nome, raca FROM animal
WHERE especie = 'Cachorro'
ORDER BY nome;

SELECT s.nome_servico, cs.quantidade, cs.valor_unitario
FROM consulta_servico cs
JOIN servico s ON s.id_servico = cs.id_servico
WHERE cs.id_consulta = 1;

SELECT t.nome AS tutor, SUM(c.valor_total) AS total_gasto
FROM consulta c
JOIN animal a ON a.id_animal = c.id_animal
JOIN tutor t ON t.id_tutor = a.id_tutor
GROUP BY t.nome
ORDER BY total_gasto DESC;
