using { Northwind as external } from './external/Northwind';

service CatalogService {
    
    @readonly
    entity Products as projection on external.Products {
         key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    }
    @readonly
     entity PersonDetail as projection on external.PersonDetails {
         key PersonID,Age,Gender,Phone
    }

    
}

annotate CatalogService.Products with @cds.persistence:{table,skip:false};

annotate CatalogService.PersonDetail with @cds.persistence:{table,skip:false};
