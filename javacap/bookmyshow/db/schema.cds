using {com.ladera.schemas.User} from '@sap/capire-userdata';

service BookMyShowService{
entity Customer as projection on User;
}     

