using ProcessorService as service from '../../srv/procressor-service';

annotate service.bookName with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
            Criticality : author.publishedYear,
        },
        {
            $Type : 'UI.DataField',
            Label : 'bookName',
            Value : bookName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'author_ID',
            Value : author_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'language',
            Value : language,
        },
        {
            $Type : 'UI.DataField',
            Label : 'genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Value : author.authorName,
            Criticality : author.publishedYear,
            ![@UI.Importance] : #Medium,
        },
        {
            $Type : 'UI.DataField',
            Value : author.books.author_ID,
            Label : '{i18n>Authorid}',
        },
    ]
);
annotate service.bookName with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bookName',
                Value : bookName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author_ID',
                Value : author_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'language',
                Value : language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prize',
                Value : prize,
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
annotate service.bookName with @(
    UI.SelectionFields : [
        genre,
        language,
        author.authorName,
    ]
);
annotate service.bookName with {
    genre @Common.Label : '{i18n>Genre}'
};
annotate service.bookName with {
    language @Common.Label : '{i18n>Language1}'
};
annotate service.authorName with {
    authorName @Common.Label : '{i18n>Authorauthorname}'
};
annotate service.bookName with {
    bookName @Common.Text : genre
};
annotate service.bookName with {
    ID @Common.Text : genre
};

annotate service.bookName with {
    genre @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'bookName',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : genre,
                    ValueListProperty : 'genre',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : bookName
)};
annotate service.bookName with {
    language @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'bookName',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : language,
                    ValueListProperty : 'language',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : bookName
)};
annotate service.authorName with {
    authorName @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'authorName',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : authorName,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.authorName with {
    ID @Common.Text : authorName
};
