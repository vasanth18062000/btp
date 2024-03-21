using{SampleSpeed.db as my}from '../db/schema';
service SpeedService {

    entity Product as projection on my.Product;
    entity Cart as projection on my.Cart;

}annotate SpeedService.Product with @odata.draft.enabled ;
//annotate SpeedService.Cart with @odata.draft.enabled ;
