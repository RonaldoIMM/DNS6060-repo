CREATE TABLE patient (
  patient_id VARCHAR(20) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  blood_group VARCHAR(10) NULL,
  disease VARCHAR(50) NULL,
  PRIMARY KEY  (patient_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE donor (
  donor_id VARCHAR(20) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  blood_group VARCHAR(10) NULL,
  medical_report VARCHAR(50) NULL,
  address VARCHAR(50) NULL,
  contact_number VARCHAR(20) NULL,
  PRIMARY KEY (donor_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE blood_bank (
  blood_bank_id VARCHAR(10) NOT NULL,
  blood_bank_name VARCHAR(50) NOT NULL,
  blood_bank_address VARCHAR(50) NOT NULL,
  contact_number VARCHAR(20) NULL,
  PRIMARY KEY (blood_bank_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE blood_bank_donor (
  blood_bank_id VARCHAR(20) NOT NULL,
  donor_id VARCHAR(20) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (blood_bank_id,donor_id),
  CONSTRAINT fk_blood_bank_donor_blood_bank FOREIGN KEY (blood_bank_id) REFERENCES blood_bank (blood_bank_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_blood_bank_donor_donor FOREIGN KEY (donor_id) REFERENCES donor (donor_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO patient VALUES ('B001001','Arauz','Alejandro', 'A','anemia'),
('B002002','Carr','Tyler', 'B','hemophilia'),
('B003003','Dorfman','Andrew','AB','lymphoma'),
('B004004','Jackson','Maura','O','myeloma'),
('B005005','Lenhardt','Andrew', 'A','neutropenia'),
('B006006','Nicol','Ryan', 'B','leukemia'),
('B007007','Oliphant','Anthony','AB','sepsis'),
('B008008','Phillips','Jason','O','anemia'),
('B009009','Sanders','Stephanie','AB','sepsis'),
('B010010','Worthington','Thomas','O','anemia')

INSERT INTO donor VALUES ('D001','Clouser','Jeffrey', 'A',null,'Wilmington DE',null),
('D002','Green','Kaleigh', 'B',null,'Hockessin DE','302-555-4444'),
('D003','Rahman','Anzuman','AB',null,'Oxford PA',null),
('D004','Thiel','Robert','O',null,'Middletown DE','302-223-8787'),
('D005','Yochim','Peter', 'A',null,'Vineland NJ',null)

INSERT INTO blood_bank VALUES ('BB01','Blood Bank of Delmarva','100 Hygeia drive, Newark DE', '302-737-8400'),
('BB02','Miller-Keystone Blood Center','128 Eagleview blvd, Exton PA', '484-875-8015'),
('BB03','B Positive Plasma','812 Delsea dr, Glassboro NJ', '856-442-9100')

INSERT INTO blood_bank_donor VALUES ('BB01','D005',default),
('BB02','D004',default),
('BB03','D003',default),
('BB01','D002',default),
('BB02','D001',default)

--select bbd.*, bb.blood_bank_name, d.last_name, d.first_name from blood_bank_donor  bbd join blood_bank bb on bbd.blood_bank_id=bb.blood_bank_id join donor d on bbd.donor_id=d.donor_id order by d.donor_id
