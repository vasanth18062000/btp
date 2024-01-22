using {northwind as externalservice} from './external/northwind';
namespace co.ladera;



service CatalogService {

    
    entity Products as projection on externalservice.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };
    @cds.redirection.target
    entity FeaturedProduct as projection on externalservice.FeaturedProduct;
     entity Customer as projection on externalservice.Customer;
     entity Employee as projection on externalservice.Employee;
     entity ProductDetails as projection on externalservice.ProductDetails;
      entity Categories as projection on externalservice.Categories;
      entity Suppliers as projection on externalservice.Suppliers;
      @cds.redirection.target
      entity Persons as projection on externalservice.Persons;
      entity PersonDetails as projection on externalservice.PersonDetails excluding {Address};
      entity Advertisements as projection on externalservice.Advertisements{ID,Name,AirDate};

}