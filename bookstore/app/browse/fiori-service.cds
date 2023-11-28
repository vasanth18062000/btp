using BooksService from '../../srv/service';
annotate BooksService.Books with @fiori.draft.enabled;
annotate AdminSeBooksServicervice.Books with @odata.draft.enabled;
annotate BooksService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
  SelectionFields : [
    title,
    stock,
    
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
 

LineItem : [
      { Value: title},
       {Value: stock},
       {Value: price},
       
     {
      $Type  : 'UI.DataFieldForAnnotation',
      Target : '@UI.DataPoint#rating'
    },
      
      
      {
        Value: descr,
        ![@UI.Hidden] 
      },
       {
        Value: author.ID,
        Label:'Author' 
       // Action : 'BooksService.addToAuthor'
      },
       ],
       
      
})
{
     @UI.HiddenFilter
     descr;
    @Measures.ISOCurrency : currency.code
    price
};



// annotate BooksService.Books actions {
//     @(
//         Common.SideEffects : {
//             TargetProperties : ['_it/order_ID'],
//             TargetEntities : [_it]
//         },
//         cds.odata.bindingparameter.name : '_it'
//     )
//     addToAuthor(_ID @(
//         title : '{i18n>Authors}',
//         Common : {ValueListMapping : {
//             Label : '{i18n>Authors}',
//             CollectionPath : 'Authors',
//             Parameters : [
//                 {
//                     $Type : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : author_ID,
//                     ValueListProperty : 'ID'
//                 },
//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'authorID'
//                 },
              
//             ],
//         }}
//    )
//    )
//  }
 