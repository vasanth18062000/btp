using{sap.capire.customer as my} from '../db/schema';
service customerservice{
    entity customer as projection on my.customer;
}