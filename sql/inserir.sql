USE clinica_veterinaria;

INSERT INTO tutor VALUES
(1, 'Ana Souza', '12345678901', '(11)98888-0001','ana.souza@example.com'),
(2, 'Bruno Lima','23456789012','(11)98888-0002','bruno.lima@example.com'),
(3, 'Carla Mendes','34567890123','(11)98888-0003','carla.mendes@example.com');

INSERT INTO veterinario VALUES
(1,'Dr. João Alves','CRMV123','Clínico Geral','(11)97777-0001','joao@vet.com'),
(2,'Dra. Maria Costa','CRMV234','Dermatologia','(11)97777-0002','maria@vet.com');

INSERT INTO animal VALUES
(1,'Rex','Cachorro','Labrador','2020-05-10',1),
(2,'Mimi','Gato','Siamês','2019-08-22',2),
(3,'Thor','Cachorro','Bulldog','2021-01-15',3);

INSERT INTO servico VALUES
(1,'Consulta Clínica','Clínica',150.00),
(2,'Vacina Polivalente','Vacinação',90.00),
(3,'Exame de Sangue','Laboratório',120.00);

INSERT INTO consulta VALUES
(1,'2025-11-10 09:00:00','Consulta de rotina',240.00,1,1),
(2,'2025-11-10 10:30:00','Vacinação anual',90.00,2,1),
(3,'2025-11-11 14:00:00','Problema de pele',270.00,3,2);

INSERT INTO consulta_servico VALUES
(1,1,1,150.00),
(1,2,1,90.00),
(2,2,1,90.00),
(3,1,1,150.00),
(3,3,1,120.00);
