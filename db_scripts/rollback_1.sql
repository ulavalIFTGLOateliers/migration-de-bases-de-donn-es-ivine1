ALTER TABLE album DROP FOREIGN KEY fk_A_musicianName;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer CHANGE musicianName singerName  VARCHAR(50);
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName ;
DROP TABLE IF EXISTS band ;

