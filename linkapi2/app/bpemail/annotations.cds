using com.ladera.linkapi.LinkApi as service from '../../srv/mashup';

annotate service.Email_Partner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'AddressID',
            Value : AddressID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Person',
            Value : Person,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmailAddress',
            Value : EmailAddress,
        },
        {
            $Type : 'UI.DataField',
            Label : 'IsDefaultEmailAddress',
            Value : IsDefaultEmailAddress,
        },
    ]
);
annotate service.Email_Partner with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'AddressID',
                Value : AddressID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Person',
                Value : Person,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmailAddress',
                Value : EmailAddress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IsDefaultEmailAddress',
                Value : IsDefaultEmailAddress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Email',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Email_Partner with @(
    UI.SelectionFields : [
        EmailAddress,
        Person,
    ]
);
annotate service.Email_Partner with {
    EmailAddress @Common.Label : 'EmailAddress'
};
annotate service.Email_Partner with {
    Person @Common.Label : 'Person'
};
annotate service.Email_Partner with {
    EmailAddress @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Email_Partner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : EmailAddress,
                    ValueListProperty : 'EmailAddress',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Email_Partner with @(
    UI.FieldGroup #Email : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
