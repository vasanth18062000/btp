using BooksService from '../../srv/services';

annotate BooksService.Authors with @(
UI : {
  HeaderInfo  : {
      TypeName : 'Author',
      TypeNamePlural : 'Authors',
  },
  LineItem : [
      {
        Value: firstname,
        Label: 'First Name'
      },
      {
        Value: lastname,
        Label: 'Last Name'
      }
  ],
  SelectionFields : [
  firstname
  ],
  PresentationVariant : {
    Text           : 'Default',
    SortOrder      : [{Property : firstname}],
    Visualizations : ['@UI.LineItem']
  },
  }
);