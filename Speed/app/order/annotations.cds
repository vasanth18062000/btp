using OrderService as service from '../../srv/OrdersService';

annotate service.Order with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'orderCode',
            Value : orderCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'orderEntries_id',
            Value : orderEntries_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customer_userId',
            Value : customer_userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'totalPrice',
            Value : totalPrice,
        },
    ]
);
annotate service.Order with {
    orderEntries @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'OrderEntry',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : orderEntries_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'entryNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'products_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'quantity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'subTotal',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'totalQuantity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'order_id',
            },
        ],
    }
};
annotate service.Order with {
    billingAddress @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : billingAddress_Id,
                ValueListProperty : 'Id',
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
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'state_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'pincode',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'country_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'customer_userId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressType_Id',
            },
        ],
    }
};
annotate service.Order with {
    deliveryAddress @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Address',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : deliveryAddress_Id,
                ValueListProperty : 'Id',
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
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'state_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'pincode',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'country_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'customer_userId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressType_Id',
            },
        ],
    }
};
annotate service.Order with {
    deliveryContact @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ContactDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : deliveryContact_Id,
                ValueListProperty : 'Id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'phoneNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'emailId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'User_userId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contactType',
            },
        ],
    }
};
annotate service.Order with @(
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
                Label : 'orderCode',
                Value : orderCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orderEntries_id',
                Value : orderEntries_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customer_userId',
                Value : customer_userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'totalPrice',
                Value : totalPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'billingAddress_Id',
                Value : billingAddress_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryAddress_Id',
                Value : deliveryAddress_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryContact_Id',
                Value : deliveryContact_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shippingMethod_id',
                Value : shippingMethod_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userMessage',
                Value : userMessage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'paymentMode',
                Value : paymentMode,
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
