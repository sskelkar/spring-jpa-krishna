create sequence seq_car start with 1;

create table car
(
  car_id number not null,
  company varchar2(50),
  model varchar2(20),
  price number,
  
  CONSTRAINT pk_car PRIMARY KEY (car_id)
);

CREATE OR REPLACE TRIGGER trg_car_bi
BEFORE INSERT ON car
FOR EACH ROW
BEGIN
  IF :NEW.car_id IS NULL THEN
    SELECT seq_car.NEXTVAL INTO :NEW.car_id FROM dual;
  END IF;
END;
/

insert into car(company, model, price) values('Tata', 'Indica', 500000);
insert into car(company, model, price) values('Maruti', '800', 200000);