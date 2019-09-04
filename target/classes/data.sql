INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_DOCTOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');


INSERT INTO users(id, unique_id, email, name, password, phone_number, username, role_id)
	VALUES (-1, '123', 'dan_claw20@yahoo.com', 'Ionescu George', 'parola', '1234567890', 'patient', 1);
INSERT INTO users(id, unique_id, email, name, password, phone_number, username, role_id)
	VALUES (-3, '134', 'fortza_madrid@yahoo.com', 'Doctorescu Ion', 'parola', '1234567890', 'doctor', 2);

INSERT INTO investigations(id, name, patient_id) values (-2, 'ekg1', -1);
INSERT INTO investigations(id, name, patient_id) values (-1, 'ekg2', -1);