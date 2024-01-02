using {com.ladera.catalog as external} from '.';

service catalogService {

        
        entity Products as projection on external.Products
        
}
annotate catalog.Products with @cds.persistence :{table,skip:false} ;
