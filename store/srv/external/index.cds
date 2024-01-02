using {NorthWind as external} from './NorthWind';

namespace  com.ladera.catalog;


    entity Products as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    }

    entity ProductDetails as projection on external.ProductDetails{
        key ProductID,Details,Product
    } 

    entity Employee as projection on external.Employee{
        EmployeeID, HireDate, Salary
    }

    entity Categories as projection on external.Categories{
        key ID,Name,Products
    }

    entity Customer as projection on external.Customer{
        TotalExpense
    }

    entity Suppliers as projection on external.Suppliers{
        key ID, Name, Location, Concurrency, Products
    }