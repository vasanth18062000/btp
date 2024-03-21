using SpeedService as service from '../../srv/SpeedService';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'code',
            Value : code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'productImage',
            Value : productImage,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
    ]
);
annotate service.Product with {
    cart @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Cart',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : cart_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'cartCode',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'product_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'totalPrice',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'paymentMode',
            },
        ],
    }
};
annotate service.Product with @(
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
                Label : 'code',
                Value : code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productImage',
                Value : productImage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rating',
                Value : rating,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cart_id',
                Value : cart_id,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Target : '@UI.FieldGroup#GeneratedGroup1',
            Label : 'Product Details',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Cart Details',
            ID : 'CartDetails',
            Target : '@UI.FieldGroup#CartDetails',
        },
    ]
);
annotate service.Product with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
        ImageUrl : productImage,
    }
);
annotate service.Product with @(
    UI.DataPoint #rating : {
        $Type : 'UI.DataPointType',
        Value : rating,
        Title : 'rating',
        TargetValue : 5,
        Visualization : #Rating,
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'rating',
            Target : '@UI.DataPoint#rating',
        },
    ]
);
annotate service.Product with @(
    UI.FieldGroup #CartDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cart.id,
                Label : 'id',
            },{
                $Type : 'UI.DataField',
                Value : cart.cartCode,
                Label : 'cartCode',
            },{
                $Type : 'UI.DataField',
                Value : cart.totalPrice,
                Label : 'totalPrice',
            },{
                $Type : 'UI.DataField',
                Value : cart.paymentMode,
                Label : 'paymentMode',
            },{
                $Type : 'UI.DataField',
                Value : cart.isActive,
                Label : 'isActive',
            },],
    }
);
