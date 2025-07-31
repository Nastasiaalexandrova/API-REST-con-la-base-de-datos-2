CREATE DATABASE EOI;
USE EOI;

/*SQL para ejecutar el juego de pruebas*/
drop table if exists cursos;
	create table idiomes(
		id_idioma int primary key auto_increment not null,
		nom_idioma varchar(50),
		nombre_idioma varchar(50)
		);
	create table cursos(
		id_curs int primary key auto_increment not null,
	    Nom varchar(255),
	    id_idioma int,
	    Nivell varchar(5),
	    Tipus varchar(20),
	    Any int,
	    Hores int,
	    Preu float,
	    Places int,
	    Descripcio varchar(5000)
	);

INSERT INTO idiomes (nom_idioma, nombre_idioma) 
VALUES ('Anglès', 'Inglés'), ('Francès', 'Francés'), ('Alemany', 'Alemán'),('Japonès', 'Japonés'),('Xinès', 'Chino'), ('Rus', 'Ruso');

INSERT INTO cursos values ('1', 'Anglès 1r', 1, 'A1.2', 'Ordinari', '2016', '130', '400', '30', 'Curs 1');
INSERT INTO cursos values ('2', 'Anglès 2n', 1, 'A2', 'Ordinari', '2016', '130', '400', '30', 'Curs 2');
INSERT INTO cursos values ('3', 'Anglès 3r', 1, 'B1', 'Ordinari', '2016', '130', '400', '30', 'Curs 3');
INSERT INTO cursos values ('4', 'Anglès 4t', 1, 'B2.1', 'Ordinari', '2016', '130', '400', '30', 'Curs 4');
INSERT INTO cursos values ('5', 'Anglès 5è', 1, 'B2.2', 'Ordinari', '2016', '130', '400', '30', 'Curs 5');
INSERT INTO cursos values ('6', 'Anglès C1', 1, 'C1', 'Ordinari', '2016', '130', '400', '30', 'Curs 6');
INSERT INTO cursos values ('7', 'Francès 1r', 2, 'A1.2', 'Ordinari', '2016', '130', '400', '30', 'Curs 7');
INSERT INTO cursos values ('8', 'Francès 2n', 2, 'A2', 'Ordinari', '2016', '130', '400', '30', 'Curs 8');
INSERT INTO cursos values ('9', 'Francès 3r', 2, 'B1', 'Ordinari', '2016', '130', '400', '30', 'Curs 9');
INSERT INTO cursos values ('10', 'Francès 4t', 2, 'B2.1', 'Ordinari', '2016', '130', '400', '30', 'Curs 10');
INSERT INTO cursos values ('11', 'Francès 5è', 2, 'B2.2', 'Ordinari', '2016', '130', '400', '30', 'Curs 11');
INSERT INTO cursos values ('12', 'Alemany 1r A', 3, 'A1.2', 'Ordinari', '2016', '65', '400', '30', 'Curs 12');
INSERT INTO cursos values ('13', 'Alemany 1r B', 3, 'A1.2', 'Ordinari', '2016', '65', '400', '30', 'Curs 13');
INSERT INTO cursos values ('14', 'Alemany 2n A', 3, 'A2', 'Ordinari', '2016', '65', '400', '30', 'Curs 14');
INSERT INTO cursos values ('15', 'Alemany 2n B', 3, 'A2', 'Ordinari', '2016', '65', '400', '30', 'Curs 15');
INSERT INTO cursos values ('16', 'Alemany 3r A', 3, 'B1', 'Ordinari', '2016', '65', '400', '30', 'Curs 16');
INSERT INTO cursos values ('17', 'Alemany 3r B', 3, 'B1', 'Ordinari', '2016', '65', '400', '30', 'Curs 17');

INSERT INTO cursos values ('18', 'Introducció a l\'Anglès', 1, 'A1.1', 'Especial', '2016', '90', '400', '30', 'Curs 18');
INSERT INTO cursos values ('19', 'Anglès per a viatjar', 1, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 19');
INSERT INTO cursos values ('20', 'Japonès 1r A', 4, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 20');
INSERT INTO cursos values ('21', 'Japonès 1r B', 4, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 21');
INSERT INTO cursos values ('22', 'Xinès 1r A', 5, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 22');
INSERT INTO cursos values ('23', 'Xinès 1r B', 5, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 23');
INSERT INTO cursos values ('24', 'Rus 1r A', 6, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 24');
INSERT INTO cursos values ('25', 'Rus 1r B', 6, 'A1.2', 'Especial', '2016', '90', '400', '30', 'Curs 25');
INSERT INTO cursos values ('26', 'Actualització lingüística i conversa d\'anglès usuari bàsic', 1, 'A2', 'Especial', '2016', '60', '400', '30', 'Curs 26');
INSERT INTO cursos values ('27', 'Actualització lingüística i conversa d\'anglès usuari iniciat', 1, 'B1', 'Especial', '2016', '60', '400', '30', 'Curs 27');
INSERT INTO cursos values ('28', 'Actualització lingüística i conversa d\'anglès usuari independent', 1, 'B2.1', 'Especial', '2016', '60', '400', '30', 'Curs 28');
INSERT INTO cursos values ('29', 'Actualització lingüística i conversa d\'anglès usuari experimentat', 1, 'B2.2', 'Especial', '2016', '60', '400', '30', 'Curs 29');
INSERT INTO cursos values ('30', 'Actualització lingüística i conversa d\'anglès perfeccionament', 1, 'C1', 'Especial', '2016', '60', '400', '30', 'Curs 30');
INSERT INTO cursos values ('31', 'Actualització lingüística i conversa d\'anglès usuari independent', 1, 'B2.1', 'Especial', '2016', '60', '400', '30', 'Curs 31');
INSERT INTO cursos values ('32', 'Actualització lingüística i conversa de francès usuari iniciat', 2, 'B1', 'Especial', '2016', '60', '400', '30', 'Curs 32');
INSERT INTO cursos values ('33', 'Actualització lingüística i conversa de francès usuari independent', 2, 'B2.2', 'Especial', '2016', '60', '400', '30', 'Curs 33');
INSERT INTO cursos values ('34', 'Business English nivell intermedi', 1, 'B1', 'Especial', '2016', '60', '400', '30', 'Curs 34');
INSERT INTO cursos values ('35', 'Business English nivell avançat', 1, 'B2.1', 'Especial', '2016', '60', '400', '30', 'Curs 35');
INSERT INTO cursos values ('36', 'Cap a la titulació oficial B1 d\'Anglès', 1, 'B1', 'Especial', '2016', '30', '400', '30', 'Curs 36');
INSERT INTO cursos values ('37', 'Cap a la titulació oficial B2 d\'Anglès', 1, 'B2.2', 'Especial', '2016', '30', '400', '30', 'Curs 37');
INSERT INTO cursos values ('38', 'Written comucation skills', 1, 'B2.2', 'Especial', '2016', '60', '400', '30', 'Curs 38');
INSERT INTO cursos values ('39', 'Conversa i perfeccionament professorat AICLE i anglès informació, primària i secundària', 1, 'B1', 'Especial', '2016', '30', '400', '30', 'Curs 39');
INSERT INTO cursos values ('40', 'Cap a la titulació oficial C1 d\'Anglès', 1, 'C1', 'Especial', '2016', '90', '400', '30', 'Curs 40');
INSERT INTO cursos values ('41', 'Perfeccionament c1: Cap al C2 d\'Anglès', 1, 'C2', 'Especial', '2016', '90', '400', '30', 'Curs 41');
INSERT INTO cursos values ('42', 'Short literary texts: improve your reading writing and speaking', 1, 'C1', 'Especial', '2016', '60', '400', '30', 'Curs 42');

INSERT INTO cursos values ('43', 'Introducció a l\'Anglès', 1, 'A1.1', 'Estiu', '2016', '40', '400', '30', 'Curs 43');
INSERT INTO cursos values ('44', 'Introducció al japonès', 4, 'A1.1', 'Estiu', '2016', '40', '400', '30', 'Curs 44');
INSERT INTO cursos values ('45', 'Anglès 1r A', 1, 'A1.2', 'Estiu', '2016', '80', '400', '30', 'Curs 45');
INSERT INTO cursos values ('46', 'Anglès 1r B', 1, 'A1.2', 'Estiu', '2016', '80', '400', '30', 'Curs 46');
INSERT INTO cursos values ('47', 'Anglès 2n A', 1, 'A2', 'Estiu', '2016', '80', '400', '30', 'Curs 47');
INSERT INTO cursos values ('48', 'Anglès 2n B', 1, 'A2', 'Estiu', '2016', '80', '400', '30', 'Curs 48');
INSERT INTO cursos values ('49', 'Anglès 3r A', 1, 'B1', 'Estiu', '2016', '80', '400', '30', 'Curs 49');
INSERT INTO cursos values ('50', 'Anglès 3r B', 1, 'B1', 'Estiu', '2016', '80', '400', '30', 'Curs 50');
INSERT INTO cursos values ('51', 'Anglès 4t', 1, 'B2.1', 'Estiu', '2016', '80', '400', '30', 'Curs 51');
INSERT INTO cursos values ('52', 'Anglès 5t', 1, 'B2.2', 'Estiu', '2016', '80', '400', '30', 'Curs 52');
INSERT INTO cursos values ('53', 'Francès 1r', 2, 'A1.2', 'Estiu', '2016', '80', '400', '30', 'Curs 53');
INSERT INTO cursos values ('54', 'Francès 2n', 2, 'A2', 'Estiu', '2016', '80', '400', '30', 'Curs 54');
INSERT INTO cursos values ('55', 'Francès 3r', 2, 'B1', 'Estiu', '2016', '80', '400', '30', 'Curs 55');
INSERT INTO cursos values ('56', 'Alemany 1r A', 3, 'A1.2', 'Estiu', '2016', '80', '400', '30', 'Curs 56');
INSERT INTO cursos values ('57', 'Alemany 1r B', 3, 'A1.2', 'Estiu', '2016', '80', '400', '30', 'Curs 57');
INSERT INTO cursos values ('58', 'Anglès 1r', 1, 'A1.2', 'Ordinari', '2017', '130', '400', '30', 'Curs 1');
INSERT INTO cursos values ('59', 'Anglès 2n', 1, 'A2', 'Ordinari', '2017', '130', '400', '30', 'Curs 2');
INSERT INTO cursos values ('60', 'Anglès 3r', 1, 'B1', 'Ordinari', '2017', '130', '400', '30', 'Curs 3');
INSERT INTO cursos values ('61', 'Anglès 4t', 1, 'B2.1', 'Ordinari', '2017', '130', '400', '30', 'Curs 4');
INSERT INTO cursos values ('62', 'Anglès 5è', 1, 'B2.2', 'Ordinari', '2017', '130', '400', '30', 'Curs 5');
INSERT INTO cursos values ('63', 'Anglès C1', 1, 'C1', 'Ordinari', '2017', '130', '400', '30', 'Curs 6');
INSERT INTO cursos values ('64', 'Francès 1r', 2, 'A1.2', 'Ordinari', '2017', '130', '400', '30', 'Curs 7');
INSERT INTO cursos values ('65', 'Francès 2n', 2, 'A2', 'Ordinari', '2017', '130', '400', '30', 'Curs 8');
INSERT INTO cursos values ('66', 'Francès 3r', 2, 'B1', 'Ordinari', '2017', '130', '400', '30', 'Curs 9');
INSERT INTO cursos values ('67', 'Francès 4t', 2, 'B2.1', 'Ordinari', '2017', '130', '400', '30', 'Curs 10');
INSERT INTO cursos values ('68', 'Francès 5è', 2, 'B2.2', 'Ordinari', '2017', '130', '400', '30', 'Curs 11');
INSERT INTO cursos values ('69', 'Alemany 1r A', 3, 'A1.2', 'Ordinari', '2017', '65', '400', '30', 'Curs 12');
INSERT INTO cursos values ('70', 'Alemany 1r B', 3, 'A1.2', 'Ordinari', '2017', '65', '400', '30', 'Curs 13');
INSERT INTO cursos values ('71', 'Alemany 2n A', 3, 'A2', 'Ordinari', '2017', '65', '400', '30', 'Curs 14');
INSERT INTO cursos values ('72', 'Alemany 2n B', 3, 'A2', 'Ordinari', '2017', '65', '400', '30', 'Curs 15');
INSERT INTO cursos values ('73', 'Alemany 3r A', 3, 'B1', 'Ordinari', '2017', '65', '400', '30', 'Curs 16');
INSERT INTO cursos values ('74', 'Alemany 3r B', 3, 'B1', 'Ordinari', '2017', '65', '400', '30', 'Curs 17');

ALTER TABLE cursos
DROP COLUMN Descripcio;