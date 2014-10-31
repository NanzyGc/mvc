/*
SQLyog Ultimate v8.61 
MySQL - 5.5.16 : Database - mvc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mvc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mvc`;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(150) DEFAULT NULL,
  `r1` varchar(100) DEFAULT NULL,
  `r2` varchar(100) DEFAULT NULL,
  `r3` varchar(100) DEFAULT NULL,
  `rb` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`idp`,`pregunta`,`r1`,`r2`,`r3`,`rb`) values (1,'¿De que color es el humo del tren electrico?','Blanco','Gris','No tiene','r3'),(2,'¿De que color es el agua?','azul','blanca','es incolora','r3'),(3,'¿Que mes tiene 28 dias?','todos','febrero','ninguno','r1'),(4,'¿Cuanto es 5 + 8?','14','13','12','r2'),(5,'¿Que numeros si los multiplicas o lo sumas entre ellos mismos siempre te dara la misma cantidad?','1,2 y 3','4,6 y 7','0,2, y 8','r1'),(6,'La palabra Paris comienza con \"p\" y termina con \"t\", ¿cierto o falso? ','falso','cierto','no se','r2'),(7,'¿Tengo 5 peces ahogandose en una pecera, cuantos me quedan?','todos','ninguno','ninguna de las anteriores','r1'),(8,'¿Te podrias casar con la hermana de tu viuda?','si','no se','no ','r3'),(9,'¿Cuantos animales de cada especie, lleva moises en el arca?','2','4','ninguno, porque fue noe','r3'),(10,'¿Cuantos dias tiene un año?','366','365','332','r2'),(11,'¿Cuantas semanas tiene un año?','52','54','50','r1'),(12,'¿Cual es la capital de Kenia?','Nairo','Bamako','Kinshasha','r1'),(13,'¿De quien es el la frase, \"Solo se que no se nada\"?','aristoteles','socrates','platon','r2'),(14,'¿En que lugar del cuerpo se produce la insulina? ','Higado','corazon','pancreas','r3'),(15,'¿Que país no tiene al euro como moneda? ','portugal','francia','suiza','r3'),(16,'¿De cuántos vértices se trata en el teorema de Pitágoras? ','4','3','6','r2'),(17,'¿De qué empresario cuenta la historia la película La red social? ','Mark Zuckerberg','Steve Jobs','Bill Gates','r1');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidop` varchar(40) DEFAULT NULL,
  `apellidom` varchar(40) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `calif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`apellidop`,`apellidom`,`usuario`,`contraseña`,`estatus`,`calif`) values (1,'NANCY','GARCIA','DE LA CRUZ','nan','12345',1,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
