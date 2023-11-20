using customerservice as service from '../../srv/customerservice';

annotate service.customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : '{i18n>Customername}',
        },{
            $Type : 'UI.DataField',
            Value : phone,
        },{
            $Type : 'UI.DataField',
            Value : email,
        },]
);
annotate service.customer with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
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
annotate service.customer with @(
    UI.SelectionFields : [
        name,
        phone,
        ID,
        email,
    ]
);
annotate service.customer with {
    name @Common.Label : '{i18n>Cusname}'
};
annotate service.customer with {
    phone @Common.Label : '{i18n>Phonenumber}'
};
annotate service.customer with {
    ID @Common.Label : '{i18n>Cusid}'
};
annotate service.customer with {
    email @Common.Label : '{i18n>Emailid}'
};
annotate service.customer with {
    phone @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'customer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : phone,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.customer with {
    name @Common.Text : {
        $value : email,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
