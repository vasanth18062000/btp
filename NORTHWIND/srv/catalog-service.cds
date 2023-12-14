using { Northwind as external } from './external/Northwind';


service CatalogService {

    @readonly
    entity Persons as projection on external.Persons {
        key ID,Name,PersonDetail
    }
    
    @readonly
    entity Products as projection on external.Products {
         key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price , Categories,Supplier,ProductDetail
    }
    @readonly
     entity PersonDetail as projection on external.PersonDetails {
         key PersonID,Age,Gender,Phone,Photo,Person,
    }

    @readonly
    entity ProductDetails as projection on external.ProductDetails{
        key ProductID,Details,Product
    }

    @readonly
    entity Categories as projection on external.Categories {
        key ID,Name,Products
    }

     @readonly
    entity Suppliers as projection on external.Suppliers {
         
         key ID,Name,Location,Concurrency,Products
    }

    @readonly
    entity Advertisements as projection on external.Advertisements{
        key ID,Name,AirDate
    }

    // entity FeaturedProduct as projection on external.FeaturedProduct {
    //     Advertisement
    // }

    entity Customer as projection on external.Customer {
        TotalExpense
    }

    entity Employee as projection on external.Employee {
        EmployeeID,HireDate,Salary
    }

    
    

 
      

    
}

annotate CatalogService.Customer with @cds.redirection.target;

annotate CatalogService.Products with @cds.redirection.target ;

annotate CatalogService.Products with @cds.persistence:{table,skip:false};

annotate CatalogService.PersonDetail with @cds.persistence:{table,skip:false};

annotate CatalogService.Persons with @cds.persistence:{table,skip:false};

annotate CatalogService.PersonDetail with @cds.persistence:{table,skip:false};

annotate CatalogService.Categories with @cds.persistence:{table,skip:false};

annotate CatalogService.Suppliers with @cds.persistence:{table,skip:false};

annotate CatalogService.Advertisements with @cds.persisitence:{table,skip:false};

