using {managed} from '@sap/cds/common';

entity Users:managed{
    key id:Integer;
    userName:String;
    mobile:String;
    email:String;
    password:String;
}

entity Courses:managed{
    key id:Integer;
    courseName:String;
    category:String;
    duration:String;
    modeOfCourse:String;
}


























