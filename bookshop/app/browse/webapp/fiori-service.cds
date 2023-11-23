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
    }
  ],
  SelectionFields : [
    author,
    genre,
    title,
    id,
  ],
  PresentationVariant : {
    Text           : 'Default',
    SortOrder      : [{Property : title}],
    Visualizations : ['@UI.LineItem']
  },
})

{
    @Measures.ISOCurrency : currency.code
    price
};

