using {com.ladera.udemyedumodels as udemyedu} from '../db/schema';


// @path:'udemyapps'
@impl: 'srv/udemy-service.js'
service UdemyEducationService{
    entity Employees as projection on udemyedu.Schema.Employee;
}


service UMService{
    entity Department as projection on udemyedu.Schema.Department;
} 
