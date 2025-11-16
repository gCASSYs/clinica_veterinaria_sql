CREATE DATABASE IF NOT EXISTS clinica_veterinaria;
USE clinica_veterinaria;

CREATE TABLE IF NOT EXISTS tutor (
    id_tutor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS veterinario (
    id_veterinario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) UNIQUE,
    especialidade VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS animal (
    id_animal INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    data_nascimento DATE,
    id_tutor INT NOT NULL,
    FOREIGN KEY (id_tutor) REFERENCES tutor (id_tutor)
);

CREATE TABLE IF NOT EXISTS servico (
    id_servico INT PRIMARY KEY,
    nome_servico VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    preco_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS consulta (
    id_consulta INT PRIMARY KEY,
    data_consulta DATETIME NOT NULL,
    motivo VARCHAR(200),
    valor_total DECIMAL(10,2),
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES animal (id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario (id_veterinario)
);

CREATE TABLE IF NOT EXISTS consulta_servico (
    id_consulta INT NOT NULL,
    id_servico INT NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2),
    PRIMARY KEY (id_consulta, id_servico),
    FOREIGN KEY (id_consulta) REFERENCES consulta (id_consulta),
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);
