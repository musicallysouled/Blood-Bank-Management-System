CREATE TABLE Hospital_Info_1 ( 
	hosp_ID int NOT NULL PRIMARY KEY,  
	hosp_name varchar(100) NOT NULL,  
	city_id char(3) NOT NULL,  
	m_id int NOT NULL,

	FOREIGN KEY(M_id) REFERENCES BB_Manager(m_id),  
	FOREIGN KEY(City_ID) REFERENCES City(City_ID) 
	);