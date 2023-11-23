    using {NorthWind as external} from './external/NorthWind.csn';

    service CatalogService {

        entity Products as projection on external.Products {
            key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
        };

        entity ProductDetail as projection on external.ProductDetails {
            key ProductID, Details
        };

        // entity Category as projection on external.Categories {
        //     key ProductID, Details
        // };


    }   