create database facilconsulta

CREATE TABLE medico(
id int AUTO_INCREMENT,
nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
senha varchar(100) NOT NULL,
data_criacao timestamp default current_timestamp,
data_alteracao timestamp default current_timestamp,
PRIMARY KEY (id)
);

CREATE TABLE horario(
id int AUTO_INCREMENT,
id_medico int NOT NULL,
data_horario datetime,
horario_agendado int(1),
data_criacao timestamp default current_timestamp,
data_alteracao timestamp default current_timestamp,
PRIMARY KEY (id),
FOREIGN KEY (id_medico) REFERENCES medico(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);