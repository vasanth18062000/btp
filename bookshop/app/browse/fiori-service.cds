using CatalogService from '../../srv/cat-service';

annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
 LineItem        : [
     {
      Value : id,
      Label : 'ID'
    },
    {
      Value : title,
    },
    {Value : author},
    {Value : price},
    {
      Value : descr,
      ![@UI.Hidden]
    },
    {Value : genre,
    ![@UI.Hidden]
    },
    {
      Value : currency.code,
      ![@UI.Hidden]
    },
     {
      $Type  : 'UI.DataFieldForAnnotation',
      Target : '@UI.DataPoint#rating'
    },
    // {
    //   $Type  :'UI.DataFieldForAnnotation',
    //   Target :'@UI.FieldGroup#AddReview',
    // },
  ],

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

  // FieldGroup #AddReview : {Data:[{
  //   $Type:'UI.DataFieldForAction',
  //   Label:'Add Review',
  //   Action:'CatalogService.addReview',
  //   InvocationGrouping: #Isolated
  // }]}  
})
  
   


{
   @UI.HiddenFilter
  descr;
    @Measures.ISOCurrency : currency.code
    price
};
