using CatalogService as service from '../../srv/service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Book Name',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Value : author.name,
        },
        {
            $Type : 'UI.DataField',
            Value : author_ID,
            Label : 'Author ID',
        },
    ]
);
annotate service.Books with @(
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
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author_ID',
                Value : author_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Value : author.name,
                Label : '{i18n>AuthorName}',
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
    UI.SelectionFields : [
        author_ID,
        title,
        author.name,
    ]
);
annotate service.Books with {
    author @Common.Label : 'author_ID'
};
annotate service.Books with {
    title @Common.Label : 'Book'
};
annotate service.Authors with {
    name @Common.Label : 'Author Name'
};

annotate service.Books with {
    author @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Authors',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Author ID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Books with {
    ID @Common.FieldControl : #Mandatory
};
annotate service.Books with {
    title @Common.FieldControl : #Mandatory
};
