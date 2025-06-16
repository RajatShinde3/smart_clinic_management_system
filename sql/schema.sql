CREATE TABLE admin (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE doctor (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    specialization VARCHAR(255),
    availability VARCHAR(255)
);

CREATE TABLE patient (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE appointment (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    doctor_id BIGINT,
    patient_id BIGINT,
    appointment_time DATETIME,
    FOREIGN KEY (doctor_id) REFERENCES doctor(id),
    FOREIGN KEY (patient_id) REFERENCES patient(id)
);

CREATE TABLE prescription (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    appointment_id BIGINT,
    medication TEXT,
    dosage TEXT,
    FOREIGN KEY (appointment_id) REFERENCES appointment(id)
);

CREATE TABLE specialization (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);
