  using{com.ladera.businessservice as serv} from './businesspartnerservice';
  
  entity Suuplier @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RiskViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RiskManager' ]
            }
      ]) as projection on serv.Suuplier;
