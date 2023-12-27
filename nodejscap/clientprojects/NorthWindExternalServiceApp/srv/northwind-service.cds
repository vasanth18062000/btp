using {northwind as externalservice} from './external/northwind';

service CatalogService {

    @readonly
    entity Products as projection on externalservice.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };

}