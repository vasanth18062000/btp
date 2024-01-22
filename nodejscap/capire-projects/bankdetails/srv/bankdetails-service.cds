using { API_BANKDETAIL_SRV as external } from './external/API_BANKDETAIL_SRV';




@path: 'bankdetails'
service bankdetails{
    entity BankDetail as projection on external.A_BankDetail;

action submitOrder (bankdetail:BankDetail:BankInternalID,BankName:String)
 

}



annotate external.A_BankDetail with @cds.persistence: {table,skip:false};



