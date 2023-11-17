# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

Step 1- Create a Dev place to build a space for creating projects 

Step 2 – open terminal and comment to create a new project by commenting as cd projects - ser: projects $ - cds init project name. 

Step 3 - Creating new CAP project in./ librarymanagement 

Adding feature 'nodejs'...  

Successfully created project. Continue with 'cd bookstore'. 

Find samples on https://github.com/SAP-samples/cloud-cap-samples 

Learn about next steps at https://cap.cloud.sap 

 

Step 4 – comment in the terminal – cds watch 

Step 5 - cds serve all --with-mocks --in-memory?  

live reload enabled for browsers  

    	No models found in dB/,srv/, app/,schema, services. 

    	Waiting for some to arrive... 

 

Step 6 - we need to create DB, server and app layer to build an app. 

 

Step 7 – add a folder on the dB as .cds(Schema.cds)  

Step 8 – Need to add an required entity on the schema.cds 

Step 9 – keep the relevant data on the schema page 

Step 10 -  using {cuid} from '@sap/cds/common';

namespace com.ladera.railways;

entity Organisation{

    employees_details : Composition of many Employees;
    department_details : Composition of many Department;
}  

entity Employees {
    
    firstName : String;
    lastName : String;
    EmployeeName : String = firstName || ' '|| lastName;
    gender : String @assert.range enum { M; F; O;};
    departmentName : String;
    department_det : Association to Department on department_det.departmentName=departmentName;
    key empId : Integer;
    designation : String;

    // Managed composition of aspect

    address : Composition of many{
        addressLine1 : String;
        addressLine2 : String;
        addressLine3 : String;
        state : String;
        country : String;
        zipCode : String;
    }

}

entity Department {

    key departmentName : String;
    // Employees_ : Association to employees;
    Emp_Id_ : Association to Employees on Emp_Id_.empId=Emp_Id;
    Emp_Id : Integer;

}

the above all were the entries that we have associated and composiated on the relavant field.
