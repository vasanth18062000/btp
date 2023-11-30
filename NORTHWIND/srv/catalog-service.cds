using { Northwind as external } from './external/Northwind';

service CatalogService {
    
    entity Products as projection on external.Products {
         key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    }
     entity PersonDetail as projection on external.PersonDetails {
         key PersonID,Age,Gender,Phone
    }
}
