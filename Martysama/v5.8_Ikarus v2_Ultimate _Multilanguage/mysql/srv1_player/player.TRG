TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `MakeCharacter` BEFORE INSERT ON `player` FOR EACH ROW BEGIN\n	IF(new.`name` REGEXP \'[^A-Za-z0-9]\')THEN\n		SET new.`name`=NULL;\n	END IF;\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
created=1730566791688810
