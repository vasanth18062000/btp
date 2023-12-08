// namespace com.ladera.fiori;

// using {toadslop.bookshop as book} from '../db/book';
// using {toadslop.bookshop as review} from '../db/review';

// using {com.ladera.bookservice as  bookservice } from '../srv/service';



// annotate bookservice.CatalogService.Books with @(
//     UI.LineItem :[
//         {
//             $Type : 'UI.DataField',
//             Label : 'ID',
//             Value : id
//         },
    
//         {
//             $Type : 'UI.DataField',
//             Label :'Title',
//             Value : title
//         },

//         {
//             $Type :'UI.DataField',
//             Label :'Author',
//             Value : author
//         },

//         {
//             $Type : 'UI.DataField',
//             Label : 'Price',
//             Value : price
//         },

//         {
//             $Type : 'UI.DataFieldForAnnotation',
//             Target : '@UI.DataPoint#rating',
//             Label : 'Rating',
//         },

//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'com.ladera.bookservice.CatalogService.addReview',
//             Label : 'Review',
//             Inline : true,
//         },


//     ]

// );

// annotate bookservice.CatalogService.Books with @(
//     UI.DataPoint #rating : {
//         Value : rating,
//         Visualization : #Rating,
//         TargetValue : 5,
//     }
// );

// annotate  bookservice.CatalogService.Books with @(
//     UI.SelectionFields :[
//         id,
//         title,
//         author
//     ]
// ) ;

// annotate bookservice.CatalogService.Books with {
//     id @Common.Label : 'IDs'
// } ;


// annotate  bookservice.CatalogService.Books with {
     
//         id @(Common.ValueList: {
//             $Type :'Common.ValueListType',
//             CollectionPath : 'Books',
//             Parameters :[
//                 {
//                 $Type :'Common.ValueListParameterInOut',
//                 LocalDataProperty : id,
//                 ValueListProperty :'id',
//                 },

//             ],
//             Label : 'Book ID',
//         },
        

//         Common.ValueListWithFixedValues :true

        
//         )};
        