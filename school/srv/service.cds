using{school.db as my}from '../db/schema';

service MyService {
    entity School as projection on my.School;
    entity Student as projection on my.Student;
    entity Teacher as projection on my.Teacher;
    entity Address as projection on my.Address;

}