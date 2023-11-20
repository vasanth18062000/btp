using {cuid,managed,Country} from '@sap/cds/common';

namespace com.francis.studentManagement;



entity studentDetail  {
    
    key studentId : String;
    name : String;
    // address : Association to many addressDetail on address.address=$self;//will not ask for the address link because it will can be fetch from both side
    contact : Association to contact; // will ask for an contact id since it is associated and can be fetched from here only.

                    //from contact i cannot fetch student details as this was a unidirection relation.

    // address : Association to addressDetail
    // address : Association to many addressDetail  //can't able to push the data from student as well as in address
     address : Association to many addressDetail on address.address=$self;


}

entity addressDetail  {
    
    key id : String;
    addressLine1 : String;
    addressLine2 : String;
   
    pincode : String(10);
    address : Association to studentDetail;

}

entity contact  {
    
    key id : String;
    number:String(13);
}

