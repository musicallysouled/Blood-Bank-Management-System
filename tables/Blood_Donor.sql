CREATE TABLE Blood_Donor ( 
	bd_ID int NOT NULL PRIMARY KEY,  
	bd_name varchar(100) NOT NULL,  
	bd_age varchar(100),  
	bd_sex varchar(100),  
	bd_Bgroup varchar(10),  
	bd_reg_date date,  
	reco_ID int NOT NULL,  
	city_ID char(3) NOT NULL,  
	
	Constraint FK001_M0236_0020 FOREIGN KEY(reco_ID) REFERENCES Recording_Staff(reco_ID),  
	Constraint FK001_M0236_0021 FOREIGN KEY(city_id) REFERENCES city(city_ID) 
	);