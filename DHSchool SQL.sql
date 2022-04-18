CREATE TABLE `Areas` (
  `id` int(10) PK,
  `tipo` varchar(200)
);

CREATE TABLE `Cursos` (
  `id` int(10) PK,
  `nome` varchar(200),
  `area_id` int(10) FK
);

CREATE TABLE `Professores` (
  `int(10) PK` <type>,
  `varchar(200)` <type>,
  `varchar(200)` <type>,
  KEY `id` (`int(10) PK`),
  KEY `nome` (`varchar(200)`),
  KEY `sobrenome` (`varchar(200)`)
);

CREATE TABLE `Turmas` (
  `int(10) PK` <type>,
  `int(10) PK` <type>,
  `int(10) PK` <type>,
  `tinyint(1)` <type>,
  `int(10) FK` <type>,
  `int(10) FK` <type>,
  FOREIGN KEY (`int(10) PK`) REFERENCES `Professores`(`varchar(200)`),
  KEY `id` (`int(10) PK`),
  KEY `duracao` (`int(10) PK`),
  KEY `ano_inicio` (`int(10) PK`),
  KEY `semestre` (`tinyint(1)`),
  KEY `curso_id` (`int(10) FK`),
  KEY `professor_id` (`int(10) FK`)
);

CREATE TABLE `Alunos` (
  `int(10) PK` <type>,
  `varchar(200)` <type>,
  `varchar(200)` <type>,
  `int(10)` <type>,
  KEY `id` (`int(10) PK`),
  KEY `nome` (`varchar(200)`),
  KEY `sobrenome` (`varchar(200)`),
  KEY `ano_matricula` (`int(10)`)
);

CREATE TABLE `alunos_turmas` (
  `int(10) PK` <type>,
  `int(10) FK` <type>,
  `int(10) FK` <type>,
  `int(10)` <type>,
  FOREIGN KEY (`int(10) FK`) REFERENCES `Alunos`(`varchar(200)`),
  FOREIGN KEY (`int(10) FK`) REFERENCES `Turmas`(`int(10) PK`),
  KEY `id` (`int(10) PK`),
  KEY `turma_id` (`int(10) FK`),
  KEY `aluno_id` (`int(10) FK`),
  KEY `numero_faltas` (`int(10)`)
);

