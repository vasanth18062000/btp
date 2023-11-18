using { com.Speed.db as db } from '../db/schema';

service AdminService {
    entity Products   as projection on db.Products;
}