CREATE TABLE BB_Manager (
	m_id int NOT NULL,  
	m_first_name varchar(20) NOT NULL,
	m_last_name varchar(20) NOT NULL,
	m_sex char(1) Default 'ND',
	m_phNo int 
	
	Constraint PK001_M0236_0025 PRIMARY KEY (m_id),
	Constraint CK001_M0236_0025 CHECK (m_sex IN ('ND','M','F'))
	); 