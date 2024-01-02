using {NorthWind as external} from './NorthWind';

namespace com.ladera.catalog;

entity Products as projection on external.Products{
            key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
}
