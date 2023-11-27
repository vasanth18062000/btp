using CatalogService from '../../srv/cat-service';

annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },

LineItem : [
      {
        Value: id,
        Label: 'Id'
      },
      {
        Value: title,
        Label: 'Title'
      },
      {
        Value: descr,
        Label: 'Description'
      },
      {
        $Type  : 'UI.DataFieldForAnnotation',
        Target : '@UI.DataPoint#rating'
      },
      {
        Value: author,       
      },
      {
        Value: currency.code,
         Label : 'Currency'      
      },      
      {
        Value: genre,
        ![@UI.Hidden]
      },
  ],

// Add search bar for a field
SelectionFields : [
    author  // mention attribute name defined in entity.
  ],

// Define sorting order for field
PresentationVariant : {
    Text           : 'Default',
    SortOrder      : [{Property : descr}],
    Visualizations : ['@UI.LineItem'],
},

DataPoint #rating   : {
    Value         : rating,
    Visualization : #Rating,
    TargetValue   : 5
  }
})

// Combine price and currency
{
    @Measures.Unit : currency.code
    price
};
