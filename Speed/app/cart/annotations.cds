using SpeedService as service from '../../srv/service';

annotate service.Cart with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cartEntries_id',
            Value : cartEntries_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customer_id',
            Value : customer_id,
        },
    ]
);
annotate service.Cart with {
    cartEntries @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'CartEntry',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : cartEntries_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'entryNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'product_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'cart_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'quantity',
            },
        ],
    }
};
annotate service.Cart with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Customer',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'customerId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dateOfBirth',
            },
        ],
    }
};
annotate service.Cart with {
    deliveryAddress @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : deliveryAddress_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine1',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine2',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine3',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine4',
            },
        ],
    }
};
annotate service.Cart with @(
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
                Label : 'cartCode',
                Value : cartCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cartEntries_id',
                Value : cartEntries_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customer_id',
                Value : customer_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'totalPrice',
                Value : totalPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryAddress_id',
                Value : deliveryAddress_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactDetail_id',
                Value : contactDetail_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'paymentMode',
                Value : paymentMode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isActive',
                Value : isActive,
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
annotate service.CartEntry with @(
    UI.LineItem #CartEntries : [
        {
            $Type : 'UI.DataField',
            Value : cart_id,
            Label : 'cart_id',
        },{
            $Type : 'UI.DataField',
            Value : id,
            Label : 'id',
        },{
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'quantity',
        },{
            $Type : 'UI.DataField',
            Value : totalQuantity,
            Label : 'totalQuantity',
        },{
            $Type : 'UI.DataField',
            Value : product.id,
        },{
            $Type : 'UI.DataField',
            Value : product.name,
        },{
            $Type : 'UI.DataField',
            Value : product.productImage,
            Label : 'productImage',
        },]
);
