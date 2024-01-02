using { com.ladera.practice as my } from '../db/schema';

service MyService {

    entity Employees as projection on my.Employee;
   
    
}

context MyContext{
    
     context Mang as projection on my.Management.Manager;

}