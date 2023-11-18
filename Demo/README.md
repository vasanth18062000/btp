Steps to Create a Nodejs Project
Commands:
cds init projectname=create project
cds watch-run and update project
cds add data-to create a data folder and add all csv file for each entity to insert the data

Shortcuts:
ctrl+c=terminate the cds watch
ctrl+shift+`=open terminal
ctrl+shift+p=open command pallete

Step-1:Create a Project

way i:In Terminal
To open Terminal, click the burger menu->Terminal->new Terminal or use shortcut ctrl+shift+`
In the terminal check whether the path  is in the project folder and run the following command
             cds init projectname
New Project will be created

way ii:From the Burger menu
click the burger menu->File->New project from template->CAP Project->enter the project name and finish
 New Project will be created


Step-2:Check for the following files
Now A New Folder in the your Project name will be created
inside the folder 3 folders will be created
i)app ii)db iii)srv


Step-3:Create the schema file
Inside the db folder create a file schema.cds
Inside the schema.cds file write the entity 

                                  using {cuid,managed} from '@sap/cds/common';
                                  namespace Employee.db;
                                  entity Employee:cuid,managed{
                                  name:String;
                                  designation:String;
                                  age:Integer;
                                  departmentnumber:Association to Department;
                                  }
                                  entity Department : cuid {
                                  departmentname:String;
                                  location:String;
                                  departmentcode:String;
                                  }
Step-4:run the following command to insert the entity csv file to the project
cds add data
note:terminate the cds watch(ctrl+c) command before running the cds add data command.

After running the command,inside the db folder data folder will be created with the csv files
Inside the csv file we can insert the data. 

Step-5:run the command on terminal
cds watch

This command will update the project whenever any changes are made and once project is completely ready
a popup with link will appear,follow the link to get the output

Step-6:Create Service file
Inside the srv folder create a file service.cds
Inside the service.cds file write the service code

                                  using{Employee.db as my} from '../db/schema';
                                  service MyService {
                                  entity Emp as projection on my.Employee;
                                  entity Dept as projection on my.Department;
                                  }

Step-7:run the command on terminal
cds watch 
a pop up with a link will appear follow link to get the output page




