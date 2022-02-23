
CREATE TABLE animals(
animal_id SERIAL PRIMARY KEY,
animal_name VARCHAR(50) NOT NULL,
when_rescued TIMESTAMP NOT NULL,
saved_content TEXT REFERENCES care_routines(animal_history)
);

CREATE TABLE adopter(
adopter_id SERIAL PRIMARY KEY ,
reason_for_adoption VARCHAR(80) Not NULL,
adoption_history TEXT REFERENCES animals(animal_id) NOT NULL,
criminal_record VARCHAR NOT NULL
);

CREATE TABLE care_routines(
special_care VARCHAR(1000),
animal_medicine_content VarChar(1000),
animal_history TEXT REFERENCES animals(animal_name)

);

Create Table Adoption_agency_supplies(
    food_quantity VARCHAR(300),
    medicine_quantity VarChar(300),
    stock_needs TEXT REFERENCES care_routines(special_care)
);