using { com.utcl.db as customer } from '../db/Schema';
service CustomerService {

    entity Customer as projection on customer.Customer;



}
annotate CustomerService.Customer with @odata.draft.enabled; 
annotate CustomerService with @(requires: 'support');