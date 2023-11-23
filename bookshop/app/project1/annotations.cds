using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(
    UI.LineItem : [
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
        author,
    ]
);
annotate service.Books with {
    author @Common.Label : 'author'
};
annotate service.Books with {
    author @Common.Text : descr
};
annotate service.Books with {
    author @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Books',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author,
                    ValueListProperty : 'title',
                },
            ],
            Label : 'Testing',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Books with {
    title @Common.Text : descr
};
