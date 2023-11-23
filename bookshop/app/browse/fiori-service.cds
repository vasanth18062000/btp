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
          {
        Value: genre,
        Label: 'Genre'
      }, 
      {
        Value: author,
        Label: 'Author'
      }
  ],
});