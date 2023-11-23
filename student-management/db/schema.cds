using {cuid,managed,Country} from '@sap/cds/common';

namespace com.francis.studentManagement;



entity studentDetail  {
    
    key studentId : String;
    name : String;
    // address : Association to many addressDetail on address.address=$self;//will not ask for the address link because it will can be fetch from both side
    contact : Association to contact; // will ask for an contact id since it is associated and can be fetched from here only.

                    //from contact i cannot fetch student details as this was a unidirection relation.

    // address : Association to addressDetail;
    // address : Association to many addressDetail  //can't able to push the data from student as well as in address
     addressTypes : Association to many addressDetail on addressTypes.address=$self;

    // Calculated Elements


    // cityName = addressTypes[city='TN'].pincode; // On-Read

    // student : String = studentId || ' ' || name; //On-Write

}

entity addressDetail  {
    
    key id : String;
    addressLine1 : String;
    addressLine2 : String;
    city :String;
   
    pincode : String(10);
    address : Association to many studentDetail;

}

entity contact  {
    
    key id : String;
    number:String(13);
}

// 2001,MRG Nagar,Nallur,TN,641606,1003
// 2002,Venkateshwar Street,Ghandhi nagar,US,600032,1002
// 2003,Vijayapuram,Salem,TN,632789,1001

// 3001,9673267890
// 3002,7492706432
// 3003,9237027340

// 1001,Francis,3001
// 1002,Pream,3002
// 1003,Siva,3003