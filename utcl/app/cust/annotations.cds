using Customer as service from '../../srv/SpeedService';

annotate service.Customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'User Id',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'First Name',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DOB',
            Value : dateOfBirth,
        },
    ]
);
annotate service.Customer with @(
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
                Label : 'userId',
                Value : userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfBirth',
                Value : dateOfBirth,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title_id',
                Value : title_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : 'addresses/@UI.LineItem#Address',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Order',
            ID : 'Order',
            Target : 'orders/@UI.LineItem#Order',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Cart',
            ID : 'Cart',
            Target : 'carts/@UI.LineItem#Cart',
        },
    ]
);
annotate service.Customer with @(
    UI.SelectionFields : [
        name,
    ]
);
annotate service.Customer with {
    name @Common.Label : '{i18n>Name}'
};
annotate service.Customer with {
    name @Common.Text : {
            $value : firstName,
            ![@UI.TextArrangement] : #TextOnly,
        }
};

annotate service.Customer with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Customer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
            Label : 'customerName',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Address with @(
    UI.LineItem #Address : [
    ]
);
annotate service.Order with @(
    UI.LineItem #Order : [
    ]
);
annotate service.Cart with @(
    UI.LineItem #Cart : [
    ]
);
annotate service.Customer with @(
    UI.HeaderInfo : {
        TypeName : 'Customer ',
        TypeNamePlural : 'Customer',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
