using {managed} from '@sap/cds/common'; 
namespace com.ladera.ladera360application;

entity Employee:managed{
     key id:String;
     name:String;
     mobile:String;
     academicTitle:localized String;
     department:Association to one Department;
}

entity Department:managed{
     key id:String;
     deptCode:String;
     deptName:String;
     employee:Association to one Employee;
}