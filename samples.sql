CREATE DATABASE `K27M_samples`;
USE `K27M_samples`; 

CREATE TABLE `samples` (
	`sample_name` VARCHAR(30),
    `condition` VARCHAR(30),
    `path` VARCHAR(100),
    PRIMARY KEY (`sample_name`)
    );

SELECT* FROM `samples`;
-- add record to table using select columns
	INSERT INTO `samples` (`sample_name`,`condition`,`path`)
    VALUES ('BT245_C19','K27M','/project/6007495/fh4132/projects/GBM/wgbs/bams/BT245_K27M_Parental.coordsrt.bam');
    
	INSERT INTO `samples` (`sample_name`,`condition`,`path`)
    VALUES ('BT245_KO_C2','K27M-KO','/project/6007495/fh4132/projects/GBM/wgbs/bams/BT245-KOC2-p12_pe.bam');
    
    INSERT INTO `samples` (`sample_name`,`condition`,`path`)
    VALUES ('DIPG36_Parental_P27','K27M','/lustre03/project/6007495/hchen009/Data/K27M/wgbs'),
    ('DIPG36_C2_K27M_KO_P8','K27M-KO','/lustre03/project/6007495/hchen009/Data/K27M/wgbs'),
    ('G477_K27M_neo_P11','K27M','/lustre03/project/6007495/hchen009/Data/K27M/wgbs'),
    ('G477-WT_WGBS','WT','/lustre03/project/6007495/hchen009/Data/K27M/wgbs');

