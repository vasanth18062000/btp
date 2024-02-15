using {com.ladera.schemas as userschemas} from '../db/schema';

service UserDetailsService{
    entity User as projection on userschemas.User;
}     