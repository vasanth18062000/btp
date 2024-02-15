using EmployeeService as EmployeeServiceUI from '../../../srv/EmployeeService';

annotate EmployeeServiceUI.Employee with @(UI:{
    HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
},
  LineItem : [
      {
        Value:  name,
        Label: 'NAME'
        
      },
      {
        Value: email,
        Label: 'MAIL'
      },
      {
        Value: mobile,
        Label: 'PHONE'
      },

  ],

});



