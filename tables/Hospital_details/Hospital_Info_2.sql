CREATE TABLE Hospital_Info_2 ( 
	hosp_ID int NOT NULL ,  
	hosp_name varchar(100) NOT NULL,  
	hosp_require_bg char(3),  
	bg_qnty int,  
	
	primary key(hosp_ID,hosp_require_bg) );