using BooksService from '../../srv/services';

annotate BooksService.Books with @(
UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
  LineItem : [
      {
        Value: title,
        Label: 'Title'
      },
      {
        Value: price,
        //Label: 'Price'
      },
      {
        Value: stock,
        Label: 'Stock Available'
      },
      {
        Value: currency.code,
        Label: 'Currency'
      },
    {
      $Type  : 'UI.DataFieldForAnnotation',
      Target : '@UI.DataPoint#rating'
    },
     {
        Value: reviews.ID,
        Label: 'Review'
      },
      // ,
      // {
      // Value: descr,
      // ![@UI.Hidden]
      // },
      // {
      // Value: ID,
      // ![@UI.Hidden]
      // }
  ],
  SelectionFields : [
    title,
    price
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
  }
  }
)
{
  @UI.HiddenFilter
  descr;
  @Measures.ISOCurrency : currency.code
  price
};