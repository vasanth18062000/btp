using { People as external } from './external/People';

service PeopleService {

    @readonly
    entity Person as projection on external.People {
     key UserName,FirstName,LastName
        
    };
}