using { com.utcl.db as order } from '../db/Schema';
service OrderService {

    entity Order as projection on order.Order;

}
