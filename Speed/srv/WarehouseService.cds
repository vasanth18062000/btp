using { com.utcl.db as warehouse  } from '../db/Schema';
service WarehoseService {

entity Warehouse as projection on warehouse.Warehouse;
   
}