using {sap.capire.Department as my} from '../db/schema';

service ProcessorService { 
    entity Details as projection on my.customer;
}
