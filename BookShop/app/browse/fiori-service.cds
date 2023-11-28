using CatalogService from '../../srv/cat-service';
annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
  LineItem : [
      {
        Value: title,
        Label: 'Title'
      },
      {Value : price},
      {
        Value: author,
        Label: 'Author'
      },
      {
        Value: genre,
        Label: 'Genre'
      },
       {
      Value: descr,
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
    //   $Type  : 'UI.DataFieldForAnnotation',
    //   Target : '@UI.FieldGroup#AddReview',
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
  // FieldGroup#AddReview:{Data:[{
  //    $Type  : 'UI.DataFieldForAction',
  //    Label:'Add Review',
  //    Action:'CatalogService.addReview',
  //    InvocationGrouping:#Isolated
  // }]
  // }
  
  
})
{
    @Measures.ISOCurrency : currency.code
    price
};