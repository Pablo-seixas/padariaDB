-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS PadariaDB;
USE PadariaDB;

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de Funcionários
-- ... (mesmo código de inserção de funcionários)

-- Tabela de Tipos de Produtos
CREATE TABLE TiposDeProduto (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de Tipos de Produtos
INSERT INTO TiposDeProduto (nome) VALUES
    ('Pão'),
    ('Doce'),
    ('Produto de Primeira Necessidade');

-- Tabela de Produtos
CREATE TABLE Produtos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (tipo_id) REFERENCES TiposDeProduto(id) ON DELETE CASCADE
);

-- Inserção de Produtos
INSERT INTO Produtos (nome, tipo_id) VALUES
    ('Óleo', 3),
    ('Açúcar', 3),
    ('Café', 3),
    ('Arroz', 3),
    ('Feijão', 3),
    ('Pão doce', 1),
    ('Pão francês', 1),
    ('Pão de fôrma', 1),
    ('Pão de massa sovada', 1),
    ('Balas', 2),
    ('Cocadas', 2),
    ('Chicletes', 2),
    ('Biscoitos', 2),
    ('Chocolates', 2),
    ('Sonho', 3),
    ('Quindim', 3),
    ('Pudim', 3),
    ('Tortas doces', 3),
    ('Bolacha (ou biscoito)', 3),
    ('Salgados', 3),
    ('Sanduíche', 3);

-- Tabela de RegistroDePonto
CREATE TABLE RegistroDePonto (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcionario_id INT UNSIGNED NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id) ON DELETE CASCADE
);
