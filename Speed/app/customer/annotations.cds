using CustomerService as service from '../../srv/CustomerService';
using from '../../db/Schema';

annotate service.Customer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'userId',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'password',
            Value : password,
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
            Label : 'name',
            Value : name,
        },
    ]
);
annotate service.Customer with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'userId',
                Value : userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'password',
                Value : password,
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
                Label : 'name',
                Value : name,
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
            Label : 'order',
            ID : 'order',
            Target : 'orders/@UI.LineItem#order',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : 'addresses/@UI.LineItem#Address',
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
    name @Common.Label : 'name'
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
            Label : 'name',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : firstName
)};
annotate service.Order with @(
    UI.LineItem #order : [
        {
            $Type : 'UI.DataField',
            Value : customer_userId,
            Label : 'customer_userId',
        },{
            $Type : 'UI.DataField',
            Value : orderCode,
            Label : 'orderCode',
        },{
            $Type : 'UI.DataField',
            Value : paymentMode,
            Label : 'paymentMode',
        },{
            $Type : 'UI.DataField',
            Value : totalPrice,
            Label : 'totalPrice',
        },{
            $Type : 'UI.DataField',
            Value : userMessage,
            Label : 'userMessage',
        },]
);
annotate service.Address with @(
    UI.LineItem #Address : [
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
            Value : addressLine3,
            Label : 'addressLine3',
        },{
            $Type : 'UI.DataField',
            Value : addressLine4,
            Label : 'addressLine4',
        },{
            $Type : 'UI.DataField',
            Value : customer.contactDetails.emailId,
            Label : 'emailId',
        },{
            $Type : 'UI.DataField',
            Value : customer.contactDetails.phoneNumber,
            Label : 'phoneNumber',
        },{
            $Type : 'UI.DataField',
            Value : pincode,
            Label : 'pincode',
        },]
);
annotate service.Carts with @(
    UI.LineItem #Cart : [
        {
            $Type : 'UI.DataField',
            Value : cartCode,
            Label : 'cartCode',
        },{
            $Type : 'UI.DataField',
            Value : customer_userId,
            Label : 'customer_userId',
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
