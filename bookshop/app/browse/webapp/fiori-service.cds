using CatalogService from '../../../srv/cat-service';

annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
 LineItem        : [
    {
      Value : title,
      Label : 'Title'
    },
    {Value : author},
    {Value : genre},
    {Value : price},
    {
      Value : descr,
      ![@UI.Hidden]
    },
    {
      Value : id, 
    },
    {
      $Type  : 'UI.DataFieldForAnnotation',
      Target : '@UI.DataPoint#rating'
    },
  ],
  SelectionFields : [
    author,
    genre,
    
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
})

{
    @Measures.ISOCurrency : currency.code
    price
};

