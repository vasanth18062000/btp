using Customer as service from '../../srv/Customer';
using from '../../db/Schema';
using from '../../db/ContactDetails';
annotate service.Customer with @(
    UI.SelectionFields : [
        name,
        userId,
    ]
);

annotate service.Customer with {
    id @Common.Label : 'id'
};

annotate service.Customer with {
    name @Common.Label : '{i18n>Name}'
};


annotate service.Customer with {
    userId @Common.Label : 'user Id'
};
annotate service.Customer with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Value : name,
        },{
            $Type : 'UI.DataField',
            Value : dateOfBirth,
            Label : 'dateOfBirth',
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : userId,
                    Descending : false,
                },
            ],
            GroupBy : [
                firstName,
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

annotate service.Customer with @(
    UI.HeaderInfo : {
        TypeName : 'Customer Order Details',
        TypeNamePlural : 'Cutomer Details',
        TypeImageUrl : 'sap-icon://employee',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : userId,
        },
    }
);
annotate service.Customer with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address Details',
            ID : 'AddressDetails',
            Target : 'addresses/@UI.LineItem#AddressDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Cart',
            ID : 'Cart',
            Target : 'carts/@UI.LineItem#Cart',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Orders',
            ID : 'Orders',
            Target : 'orders/@UI.LineItem#Orders',
        },
    ]
);
annotate service.Cart with @(
    UI.LineItem #Cart : [
        {
            $Type : 'UI.DataField',
            Value : cartCode,
            Label : 'cartCode',
        },{
            $Type : 'UI.DataField',
            Value : cartEntries_id,
            Label : 'cartEntries_id',
        },{
            $Type : 'UI.DataField',
            Value : contactDetail_id,
            Label : 'contactDetail_id',
        },{
            $Type : 'UI.DataField',
            Value : customer_id,
            Label : 'customer_id',
        },{
            $Type : 'UI.DataField',
            Value : isActive,
            Label : 'isActive',
        },{
            $Type : 'UI.DataField',
            Value : paymentMode,
            Label : 'paymentMode',
        },{
            $Type : 'UI.DataField',
            Value : totalPrice,
            Label : 'totalPrice',
        },]
);
annotate service.Address with @(
    UI.LineItem #AddressDetails : [
        {
            $Type : 'UI.DataField',
            Value : addressLine1,
            Label : 'addressLine1',
        },{
            $Type : 'UI.DataField',
            Value : addressLine2,
            Label : 'addressLine2',
        },{
            $Type : 'UI.DataField',
            Value : addressLine4,
            Label : 'addressLine4',
        },{
            $Type : 'UI.DataField',
            Value : addressLine3,
            Label : 'addressLine3',
        },{
            $Type : 'UI.DataField',
            Value : country_code,
        },{
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : country.name,
        },]
);
annotate service.Order with @(
    UI.LineItem #Orders : [
        {
            $Type : 'UI.DataField',
            Value : orderCode,
            Label : 'orderCode',
        },{
            $Type : 'UI.DataField',
            Value : paymentMode,
            Label : 'paymentMode',
        },
        {
            $Type : 'UI.DataField',
            Value : message,
            Label : 'message',
        },{
            $Type : 'UI.DataField',
            Value : totalPrice,
            Label : 'totalPrice',
        },{
            $Type : 'UI.DataField',
            Value : orderEntries.quantity,
            Label : 'quantity',
        },]
);
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
            Label : 'asdfg',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Customer with {
    userId @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Customer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : userId,
                    ValueListProperty : 'userId',
                },
            ],
            Label : 'User ID Finding',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : name,
            ![@UI.TextArrangement] : #TextSeparate,
        }
)};
annotate service.Customer with {
    firstName @Common.Label : 'First Name'
};
annotate service.Customer with {
    firstName @Common.Text : lastName
};
annotate service.Customer with @(
    UI.DataPoint #id : {
        Value : id,
        MinimumValue : 0,
        MaximumValue : 10,
    },
    UI.Chart #id : {
        ChartType : #Bullet,
        Title : 'id',
        Measures : [
            id,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#id',
                Role : #Axis1,
                Measure : id,
            },
        ],
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'emailId',
            Target : 'contactDetails/@UI.DataPoint#emailId',
        },{
            $Type : 'UI.ReferenceFacet',
            ID : 'phoneNumber',
            Target : 'contactDetails/@UI.DataPoint#phoneNumber',
        },]
);
annotate service.ContactDetails with @(
    UI.DataPoint #emailId : {
        $Type : 'UI.DataPointType',
        Value : emailId,
        Title : 'MAIL ID',
    },
    UI.DataPoint #phoneNumber : {
        $Type : 'UI.DataPointType',
        Value : phoneNumber,
        Title : 'MOBILE',
    }
);
