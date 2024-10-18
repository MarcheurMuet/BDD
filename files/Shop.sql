DROP DATABASE IF EXISTS Shop;
CREATE DATABASE Shop;
USE Shop;

CREATE TABLE T_Users (
	IdUser int(4) PRIMARY KEY AUTO_INCREMENT,
	Login varchar(20) NOT NULL,
	Password varchar(20) NOT NULL,
) ENGINE = InnoDB;

INSERT INTO T_Users (IdUser, Login, Password) VALUES (1, 'Anderson', 'Neo');
INSERT INTO T_Users (IdUser, Login, Password) VALUES (2, 'Vol', 'DeMort');
INSERT INTO T_Users (IdUser, Login, Password) VALUES (3, 'Banjo', 'Kazoui');
INSERT INTO T_Users (IdUser, Login, Password) VALUES (4, 'MrGame', '&Watch');

CREATE TABLE T_Categories (
	IdCategory		int(4)	PRIMARY KEY AUTO_INCREMENT,
	Catname		varchar(50) NOT NULL,
	Desc_Cat	varchar(50)	NOT NULL
) ENGINE = InnoDB;

INSERT INTO T_Categories (IdCategory ,Catname , Desc_Cat) VALUES (1, 'Materiel informatique', 'cest pas mickey');
INSERT INTO T_Categories (IdCategory ,Catname , Desc_Cat) VALUES (2, 'Materiel informatique', 'il est pas 4k');
INSERT INTO T_Categories (IdCategory ,Catname , Desc_Cat) VALUES (3, 'Materiel informatique', 'il est coincer en mode QWERTY');
INSERT INTO T_Categories (IdCategory ,Catname , Desc_Cat) VALUES (4, 'Decoration', 'Ultra moche');
INSERT INTO T_Categories (IdCategory ,Catname , Desc_Cat) VALUES (5, 'Soda', 'Trop de sucre');


CREATE TABLE T_Articles (
	IdArticle	int (4)	PRIMARY KEY AUTO_INCREMENT,
	Objet		varchar(30)	NOT NULL,
	Brand			varchar(30) NOT NULL,
	UnitaryPrice 		float(8) NOT NULL
) ENGINE = InnoDB;

INSERT INTO T_Articles (IdArticle, Objet, Brand, UnitaryPrice) VALUES (1,'souris','Logitoch',150);
INSERT INTO T_Articles (IdArticle, Objet, Brand, UnitaryPrice) VALUES (2,'ecrant','Logitoch',350);
INSERT INTO T_Articles (IdArticle, Objet, Brand, UnitaryPrice) VALUES (3,'clavier','Logitoch',110);
INSERT INTO T_Articles (IdArticle, Objet, Brand, UnitaryPrice) VALUES (4,'tapis de souris','Logitoch',140);
INSERT INTO T_Articles (IdArticle, Objet, Brand, UnitaryPrice) VALUES (5,'Coca','MacDo',101);

UPDATE T_Articles SET Brand='Logitech' , UnitaryPrice= 85 WHERE IdArticle = 1;
DELETE FROM t_articles where IdArticle =2;

ALTER TABLE t_articles ADD COLUMN IdCategory int(4);
ALTER TABLE T_Articles ADD FOREIGN KEY(IdCategory) REFERENCES T_Categories(IdCategory);

SELECT * FROM T_Categories;
SELECT * FROM t_articles;

UPDATE T_Articles set IdCategory=1 WHERE IdArticle = 1;
UPDATE T_Articles set IdCategory=2 WHERE IdArticle = 2;
UPDATE T_Articles set IdCategory=3 WHERE IdArticle = 3;
UPDATE T_Articles set IdCategory=4 WHERE IdArticle = 4;
UPDATE T_Articles set IdCategory=5 WHERE IdArticle = 5;
SELECT * FROM T_Articles inner join T_Categories on T_Articles.IdCategory = T_Categories.IdCategory where IdArticle <= 5;
/*SELECT * FROM T_Articles WHERE UnitaryPrice > 100;
SELECT * FROM T_Articles WHERE UnitaryPrice < 150 AND UnitaryPrice > 100;
SELECT * FROM T_Articles ORDER BY UnitaryPrice ASC;
SELECT * FROM T_Articles ORDER BY UnitaryPrice DESC;
SELECT Description  FROM T_Articles;
SELECT * FROM T_Categories;*/ 