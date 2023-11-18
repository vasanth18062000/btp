using LibraryService as service from '../../srv/service';

annotate service.Book with @(
    UI.LineItem : [
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
            Label : 'category',
            Value : category,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'author',
            Value : author,
        },
    ]
);
annotate service.Book with @(
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
                Label : '{i18n>Title}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'category',
                Value : category,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'author',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_code',
                Value : status_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'publisher_ID',
                Value : publisher_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Details}',
                    ID : 'i18nDetails',
                    Target : '@UI.FieldGroup#i18nDetails',
                },],
        },
    ]
);
annotate service.Book with @(
    UI.SelectionFields : [
        status_code,
        category,
    ]
);
annotate service.Book with {
    status @Common.Label : 'status_code'
};
annotate service.Book with {
    status @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_code,
                    ValueListProperty : 'code',
                },
            ],
            Label : 'status',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Book with {
    category @Common.Label : 'category'
};
annotate service.Book with {
    category @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Book',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : category,
                    ValueListProperty : 'category',
                },
            ],
            Label : 'category',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Book with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);
annotate service.Book with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : publisher.dateOfPublish,
                Label : 'dateOfPublish',
            },{
                $Type : 'UI.DataField',
                Value : publisher.ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : publisher.name,
                Label : 'name',
            },],
    }
);
annotate service.Book with {
    title @UI.MultiLineText : true
};
