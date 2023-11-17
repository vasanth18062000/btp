using {cuid,managed,Currency} from '@sap/cds/common';
using { com.ladera.utcl.speed as speed} from '../db/Schema';

namespace com.ladera.utcl.contact;


entity ContactDetails:  managed{
    key id:Integer;
phoneNumber:String(50);
emailId:String(50);

contactType:String @assert.range enum{
PRIMARY;SECONDARY;};
customer:Composition of  one speed.Customer;
}