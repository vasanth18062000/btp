using Customer as service from '../../srv/Customer';
using from '../../db/Schema';
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
    name @Common.Label : 'name'
};


annotate service.Customer with {
    userId @Common.Label : 'userId'
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
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : userId,
        },
        TypeImageUrl : 'sap-icon://account',
    }
);
annotate service.Customer with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Cart',
            ID : 'Cart',
            Target : 'carts/@UI.LineItem#Cart',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address Details',
            ID : 'AddressDetails',
            Target : 'addresses/@UI.LineItem#AddressDetails',
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
            Value : customer_id,
            Label : 'customer_id',
        },{
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
            Value : customer.userId,
        },{
            $Type : 'UI.DataField',
            Value : orderEntries.quantity,
            Label : 'quantity',
        },]
);
