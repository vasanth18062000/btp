using {northwindexternalservice as external} from './external/northwindexternalservice';

service CatalogService {

    @readonly
    entity Products as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };

    annotate CatalogService.Products with @(requires: 'support');

}