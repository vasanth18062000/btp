using CatalogService from '../../srv/cat-service';


annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
  SelectionFields : [
    author,
    genre
  ],
  PresentationVariant : {
    Text           : 'Default',
    SortOrder      : [{Property : title}],
    Visualizations : ['@UI.LineItem']
  }, 
   DataPoint #rating   : {
    Value         : rating,
    Visualization : #Rating,
    TargetValue   : 5
  },
  FieldGroup #AddReview : {Data: [{
            $Type  : 'UI.DataFieldForAction',
            Label : 'Add Review',
            Action : 'CatalogService.addReview',
            InvocationGrouping : #Isolated
  }]

  },
  
  LineItem : [
    {Value: title},
    {Value : author},
    {Value : genre},
      
      {
        Value : price
      },
         
      
      {
      Value: descr,
      ![@UI.Hidden]
    },   
      {
      Value: id,
      ![@UI.Hidden]
    },
      //  {
      // $Type  : 'UI.DataFieldForAnnotation',
    //   Target : '@UI.DataPoint#rating'
    // },  {
    //   $Type  : 'UI.DataFieldForAnnotation',
    //   Target : '@UI.FieldGroup#AddReview',
    // },
  
  ],
}){
    @Measures.ISOCurrency : currency.code
    price
};
