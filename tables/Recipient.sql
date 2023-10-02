CREATE TABLE Recipient ( 
	reci_ID int NOT NULL PRIMARY kEY,  
	reci_name varchar(100) NOT NULL,  
	reci_age varchar(10),
	reci_sex char(1) default 'ND',
	reci_Brgp char(3) NOT NULL,  
	reci_Bqnty float,  
	reco_ID int NOT NULL,
	reci_reg_date date,
	city_ID char(3) NOT NULL,  
	m_id int NOT NULL,

	
	FOREIGN KEY(m_id) REFERENCES BB_Manager(m_id),  
	FOREIGN KEY(city_id) REFERENCES city(city_id),
	CHECK (reci_sex in ('ND','M','F'))
	);