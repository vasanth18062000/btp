using {com.ladera.catalog as catalog } from './external';

service MyService {

    entity Products as projection on catalog.Products}

    extend service MyService{
    entity ProductDetails as projection on catalog.ProductDetails;

}

  extend service MyService {
  
    entity Employee as projection on catalog.Employee;
  
  }

    extend service MyService {
        entity Categories as projection on catalog.Categories
    }

    extend service MyService {
        entity Customer as projection on catalog.Customer;
    }

    extend service MyService {
        entity Suppliers as projection on catalog.Suppliers;
    }

annotate catalog.Products with @cds.persistence :{table,skip:false} ;

annotate catalog.ProductDetails with @cds.persistence :{table,skip:false} ;

annotate catalog.Employee with @cds.persistence :{table,skip:false};

annotate catalog.Categories with @cds.persistence :{table,skip:false};

annotate catalog.Customer with @cds.persistence :{table,skip:false};

annotate catalog.Suppliers with @cds.persistence :{table,skip:false};
