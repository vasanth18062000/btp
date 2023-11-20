using {cuid,managed  } from '@sap/cds/common';
namespace Hottel.db;

entity Branch  {
    branchName : branch;
    branchId:ID;
    Location:Location;
}
    entity Manager
    {
        managerName: String;
        managerID: String;
        PhoneNo:Int16;
        managerBelongsto: Association to Branch;
    }
type branch : String;
type ID : String;
type Location : String;

entity emoloyee{
empId:String;
empName:String;
empBranch:Association to Branch;

}