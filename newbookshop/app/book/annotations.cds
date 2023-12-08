using CatalogService as service from '../../srv/service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BookId}',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>BookTitile}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Describtion}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Author}',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>GenreOfBooks}',
            Value : genre,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : '{i18n>Ratings}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.addReview',
            Label : '{i18n>AddReviwe}',
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
                Label : 'rating',
                Value : rating,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
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
        id,
    ]
);
annotate service.Books with {
    author @Common.Label : 'author'
};
annotate service.Books with {
    id @Common.Label : 'id'
};
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
            Label : 'Select Author',
        },
        Common.ValueListWithFixedValues : true
)};
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
            Label : 'Book Id',
        },
        Common.ValueListWithFixedValues : true
)};
