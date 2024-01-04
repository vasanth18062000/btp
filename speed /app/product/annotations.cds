using Product as service from '../../srv/ProductService';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Image',
            Value : productImage,
            ![@UI.Importance] : #Medium,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'Description',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : 'Rating',
        },
    ]
);
annotate service.Product with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Code',
                Value : code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Product Image',
                Value : productImage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Value : rating,
                Label : 'Rating',
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
            Label : 'Review',
            ID : 'Review',
            Target : 'review/@UI.LineItem#Review',
        },
    ]
);
annotate service.Product with @(
    UI.HeaderInfo : {
        ImageUrl : productImage,
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.Product with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Product with @(
    UI.SelectionFields : [
        name,
        price,
    ]
);
annotate service.Product with {
    name @Common.Label : 'Name'
};
annotate service.Product with {
    price @Common.Label : 'Price'
};
annotate service.Product with {
    price @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Product',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : price,
                    ValueListProperty : 'rating',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Product with {
    productImage @UI.MultiLineText : true
};
annotate service.Product with @(
    UI.DataPoint #rating1 : {
        $Type : 'UI.DataPointType',
        Value : rating,
        Title : 'Rating',
        TargetValue : 5,
        Visualization : #Rating,
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'name',
            Target : '@UI.DataPoint#name',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'rating',
            Target : '@UI.DataPoint#rating1',
        },
    ]
);
annotate service.Product with @(
    UI.DataPoint #name : {
        $Type : 'UI.DataPointType',
        Value : name,
        Title : 'Name',
    }
);
annotate service.Product with @(
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : code,
            Label : 'code',
        },{
            $Type : 'UI.DataField',
            Value : createdAt,
        },{
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },{
            $Type : 'UI.DataField',
            Value : cartEntry.entryNumber,
            Label : 'entryNumber',
        },{
            $Type : 'UI.DataField',
            Value : cartEntry.quantity,
            Label : 'quantity',
        },{
            $Type : 'UI.DataField',
            Value : cartEntry.subTotal,
            Label : 'subTotal',
        },{
            $Type : 'UI.DataField',
            Value : cartEntry.totalQuantity,
            Label : 'totalQuantity',
        },
        {
            $Type : 'UI.DataField',
            Value : review.comments,
            Label : 'comments',
        },
        {
            $Type : 'UI.DataField',
            Value : review.rating,
            Label : 'rating',
        },]
);
annotate service.Product with @(
    UI.FieldGroup #Supplier : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Cart : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Cart1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cartEntry_id,
                Label : 'cartEntry_id',
            },{
                $Type : 'UI.DataField',
                Value : code,
                Label : 'code',
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
            },{
                $Type : 'UI.DataField',
                Value : createdAt,
            },{
                $Type : 'UI.DataField',
                Value : description,
                Label : 'description',
            },{
                $Type : 'UI.DataField',
                Value : unit,
                Label : 'unit',
            },],
    }
);
annotate service.Product with @(
    UI.FieldGroup #CartEntry : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #CartEntry1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Cart2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cartEntries.entryNumber,
                Label : 'entryNumber',
            },{
                $Type : 'UI.DataField',
                Value : cartEntries.id,
                Label : 'id',
            },{
                $Type : 'UI.DataField',
                Value : cartEntries.totalQuantity,
                Label : 'totalQuantity',
            },{
                $Type : 'UI.DataField',
                Value : cartEntries.subTotal,
                Label : 'subTotal',
            },{
                $Type : 'UI.DataField',
                Value : cartEntries.quantity,
                Label : 'quantity',
            },{
                $Type : 'UI.DataField',
                Value : cartEntries.product_id,
                Label : 'product_id',
            },],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Reviews : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Review : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Product with @(
    UI.FieldGroup #Reviews1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : review.comments,
                Label : 'comments',
            },{
                $Type : 'UI.DataField',
                Value : review.id,
                Label : 'id',
            },],
    }
);
annotate service.Review with @(
    UI.LineItem #Review : [
        {
            $Type : 'UI.DataField',
            Value : product.review.comments,
            Label : 'Comments',
        },{
            $Type : 'UI.DataField',
            Value : product.review.product_id,
            Label : 'Product_Id',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : 'Rating',
        },]
);
annotate service.Review with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
