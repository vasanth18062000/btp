using {com.ladera.proposalsystemmodels as schema} from '../db/schema';

service LoginService {
    
    entity LoginCredentials as projection on schema.LoginCredentials;
    
}