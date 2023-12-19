// using SpeedService as service from '../../C:/Users/Francis Ajay.D.S/AppData/Local/Programs/Microsoft VS Code/srv/service';
using from '../../srv/service';
using from '../../db/Schema';



annotate service.Cart with @(
    UI.LineItem : [
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
                ValueListProperty : 'quantity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'subTotal',
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
