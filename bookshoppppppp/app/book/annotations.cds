using CatalogService as service from '../../srv/service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Book Id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Book Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Book Description',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Author Name',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre of Book',
            Value : genre,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : 'Rating',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.addReview',
            Label : 'Review',
            Inline : true,
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'id',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Label : 'genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Value : rating,
                Label : 'rating',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Book Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Books with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : author,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : 'Books are the mirrors of the soul.....',
        },
    }
);
annotate service.Books with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Books with @(
    UI.SelectionFields : [
        author,
        genre,
        id,
    ]
);
annotate service.Books with {
    author @Common.Label : '{i18n>Author}'
};
annotate service.Reviews with @(
    UI.LineItem #BookReviews : [
        {
            $Type : 'UI.DataField',
            Value : book.reviews.ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : book.reviews.title,
            Label : 'title',
        },{
            $Type : 'UI.DataField',
            Value : book.reviews.text,
            Label : 'text',
        },{
            $Type : 'UI.DataField',
            Value : book.reviews.book_id,
            Label : 'book_id',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : 'rating',
        },]
);
annotate service.Reviews with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Books with {
    author @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author,
                    ValueListProperty : 'author',
                },
            ],
            Label : 'Author',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Books with {
    genre @Common.Label : '{i18n>GenreOfBook}'
};
annotate service.Books with {
    genre @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : genre,
                    ValueListProperty : 'genre',
                },
            ],
            Label : 'GENRE',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Books with {
    id @Common.Label : 'ID'
};
annotate service.Books with {
    id @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : id,
                    ValueListProperty : 'id',
                },
            ],
            Label : 'ID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Books with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    }
);
annotate service.Reviews with @(
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View Reviews',
    }
);
