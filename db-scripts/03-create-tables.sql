# InnoDB is a general-purpose storage engine that balances high reliability and high performance.
# In MySQL 5.6, InnoDB is the default MySQL storage engine.
# Unless you have configured a different default storage engine,
# issuing a CREATE TABLE statement without an ENGINE clause creates an InnoDB table.

DROP TABLE IF EXISTS `prescription`;
DROP TABLE IF EXISTS `test`;
DROP TABLE IF EXISTS `operation`;
DROP TABLE IF EXISTS `visit`;
DROP TABLE IF EXISTS `X-ray`;
DROP TABLE IF EXISTS `vaccination`;
DROP TABLE IF EXISTS `referral`;
DROP TABLE IF EXISTS `medical_history`;
DROP TABLE IF EXISTS `average_visit_time`;
DROP TABLE IF EXISTS `patient`;
DROP TABLE IF EXISTS `doctor`;
DROP TABLE IF EXISTS `schedule`;
DROP TABLE IF EXISTS `room`;
DROP TABLE IF EXISTS `ward`;
DROP TABLE IF EXISTS `hospital`;
DROP TABLE IF EXISTS `medicine`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `address`;

-- -----------------------------------------------------
-- Table `hospital`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`address`
(
    `id`            BIGINT       NOT NULL AUTO_INCREMENT,
    `street`        VARCHAR(255) NULL DEFAULT NULL,
    `house_number`  VARCHAR(4)   NULL DEFAULT NULL,
    `postcode`      VARCHAR(6)   NULL DEFAULT NULL,
    `city`          VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`user`
(
    `id`            BIGINT       NOT NULL AUTO_INCREMENT,
    `login`         VARCHAR(255) NULL DEFAULT NULL,
    `password`      VARCHAR(255) NULL DEFAULT NULL,
    `name`          VARCHAR(255) NULL DEFAULT NULL,
    `surname`       VARCHAR(255) NULL DEFAULT NULL,
    `phone_number`  INT          NULL DEFAULT NULL,
    `pesel`         BIGINT            DEFAULT NULL,
    `age`           INT               DEFAULT NULL,
    `sex`           VARCHAR(20)       DEFAULT NULL,
    `address_id`    BIGINT            DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (address_id),
    FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`medicine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`medicine`
(
    `id`            BIGINT       NOT NULL AUTO_INCREMENT,
    `medicine_name` VARCHAR(55)  NULL DEFAULT NULL,
    `description`   VARCHAR(255) NULL DEFAULT NULL,
    `dosage`        VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`hospital`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`hospital`
(
    `id`            BIGINT       NOT NULL AUTO_INCREMENT,
    `hospital_name` VARCHAR(255) DEFAULT NULL,
    `address_id`    BIGINT       DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (`address_id`),
    FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`ward`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`ward`
(
    `id`             BIGINT       NOT NULL AUTO_INCREMENT,
    `ward_name`      VARCHAR(255) DEFAULT NULL,
    `building`       VARCHAR(255) DEFAULT NULL,
    `hospital_id`    BIGINT       DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (`hospital_id`),
    FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`room`
(
    `id`          BIGINT       NOT NULL AUTO_INCREMENT,
    `room_number` INT          DEFAULT NULL,
    `floor`       INT          DEFAULT NULL,
    `purpose`     VARCHAR(255) DEFAULT NULL,
    `ward_id`     BIGINT       DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (`ward_id`),
    FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`schedule`
(
    `id`         BIGINT NOT NULL AUTO_INCREMENT,
    `date`       DATE   NOT NULL,
    `from_hour`  TIME   NOT NULL,
    `to_hour`    TIME   NOT NULL,
    `ward_id`    BIGINT DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (`ward_id`),
    FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`doctor`
-- -----------------------------------------------------
-- nr_pwz - numer Prawa Wykonywania Zawodu (Centralny Rejestr Lekarzy)
CREATE TABLE IF NOT EXISTS `hospital`.`doctor`
(
    `id`              BIGINT       NOT NULL AUTO_INCREMENT,
    `pwz_number`      INT          NOT NULL,
    `specialisation`  VARCHAR(255) DEFAULT NULL,
    `user_id`         BIGINT       DEFAULT NULL,
    `ward_id`         BIGINT       DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (user_id),
    INDEX (ward_id),
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
    FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`patient`
(
    `id`      BIGINT NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (user_id),
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`medical_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`medical_history`
(
    `id`                      BIGINT       NOT NULL AUTO_INCREMENT,
    `disease_name`            VARCHAR(255) NOT NULL,
    `interview`               VARCHAR(255) NOT NULL,
    `start_date_of_treatment` DATE         NOT NULL,
    `end_date_of_treatment`   DATE DEFAULT NULL,
    `patient_id`              BIGINT       NOT NULL,
    `doctor_id`               BIGINT       NOT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`referral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`referral`
(
    `id`                 BIGINT       NOT NULL AUTO_INCREMENT,
    `access_code`        BIGINT       NOT NULL,
    `issued`             DATE         NOT NULL,
    `exhibitor`          VARCHAR(255) NOT NULL,
    `diagnosis`          VARCHAR(255) NOT NULL,
    `other_informations` VARCHAR(255) NOT NULL,
    `patient_id`         BIGINT       NOT NULL,
    `doctor_id`          BIGINT       NOT NULL,
    `medical_history_id` BIGINT DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`vaccination`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`vaccination`
(
    `id`               BIGINT       NOT NULL AUTO_INCREMENT,
    `vaccination_name` VARCHAR(255) NOT NULL,
    `series`           VARCHAR(255) NOT NULL,
    `patient_id`       BIGINT       NOT NULL,
    `doctor_id`        BIGINT       NOT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`X-ray`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`X-ray`
(
    `id`                 BIGINT       NOT NULL AUTO_INCREMENT,
    `part_of_bodie`      VARCHAR(255) NOT NULL,
    `description`        VARCHAR(255) DEFAULT NULL,
    `patient_id`         BIGINT       NOT NULL,
    `doctor_id`          BIGINT       NOT NULL,
    `medical_history_id` BIGINT       DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`visit`
(
    `id`                 BIGINT NOT NULL AUTO_INCREMENT,
    `date`               DATE   NOT NULL,
    `time`               TIME   NOT NULL,
    `number_in_line`     INT    NOT NULL,
    `appraisal`          INT     DEFAULT NULL,
    `completion`         BOOLEAN DEFAULT FALSE,
    `patient_id`         BIGINT NOT NULL,
    `doctor_id`          BIGINT NOT NULL,
    `ward_id`            BIGINT NOT NULL,
    `hospital_id`        BIGINT NOT NULL,
    `medical_history_id` BIGINT  DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (ward_id),
    INDEX (hospital_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`),
    FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`average_visit_time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`average_visit_time`
(
    `id`                    BIGINT NOT NULL AUTO_INCREMENT,
    `average_visit_time`    FLOAT  NOT NULL,
    `visit_number`          INT    NOT NULL,
    `patient_id`            BIGINT NOT NULL,
    `doctor_id`             BIGINT NOT NULL,
    `ward_id`               BIGINT NOT NULL,
    `hospital_id`           BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (ward_id),
    INDEX (hospital_id),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`),
    FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`operation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`operation`
(
    `id`                 BIGINT       NOT NULL AUTO_INCREMENT,
    `reason`             VARCHAR(255) NOT NULL,
    `course`             VARCHAR(255) NOT NULL,
    `medicine_id`        BIGINT DEFAULT NULL,
    `medical_history_id` BIGINT       NOT NULL,
    PRIMARY KEY (`id`),
    INDEX (medicine_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`test`
(
    `id`                 BIGINT       NOT NULL AUTO_INCREMENT,
    `activities`         VARCHAR(255) NOT NULL,
    `medicine_id`        BIGINT DEFAULT NULL,
    `patient_id`         BIGINT       NOT NULL,
    `doctor_id`          BIGINT       NOT NULL,
    `medical_history_id` BIGINT DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (medicine_id),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `hospital`.`prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`prescription`
(
    `id`                  BIGINT       NOT NULL AUTO_INCREMENT,
    `date`                DATE         NOT NULL,
    `dosage`              VARCHAR(255) NOT NULL,
    `pack_number`         INT          NOT NULL,
    `payment`             INT          NOT NULL,
    `medicine_id`         BIGINT       NOT NULL,
    `patient_id`          BIGINT       NOT NULL,
    `doctor_id`           BIGINT       NOT NULL,
    `medical_history_id`  BIGINT DEFAULT NULL,
    `hospital_id`         BIGINT DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX (medicine_id),
    INDEX (patient_id),
    INDEX (doctor_id),
    INDEX (medical_history_id),
    FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
    FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
    FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
    FOREIGN KEY (`medical_history_id`) REFERENCES `medical_history` (`id`),
    FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;