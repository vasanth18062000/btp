using incidents.serve.IncidentsService as service from '../../srv/IncidentsService';

annotate service.BusinessPartner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'businesspartnername',
            Value : businesspartnername,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customer',
            Value : customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'supplier',
            Value : supplier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'businesspartnercategory',
            Value : businesspartnercategory,
        },
    ]
);
annotate service.BusinessPartner with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'businesspartnername',
                Value : businesspartnername,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customer',
                Value : customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier',
                Value : supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'businesspartnercategory',
                Value : businesspartnercategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'authorizationgroup',
                Value : authorizationgroup,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'BusinessPartner Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Customer',
            ID : 'Customer',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'CustomerName',
                    ID : 'CustomerName',
                    Target : '@UI.FieldGroup#CustomerName',
                },],
        },
    ]
);
annotate service.BusinessPartner with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 0',
    }
);
annotate service.BusinessPartner with @(
    UI.SelectionFields : [
        businesspartnername,
        businesspartnercategory,]
);
annotate service.BusinessPartner with {
    businesspartnername @Common.Label : 'businesspartnername'
};
annotate service.BusinessPartner with {
    businesspartnercategory @Common.Label : 'businesspartnercategory'
};
annotate service.BusinessPartner with @(
    UI.LineItem #tableView : [
    ],
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
annotate service.Incidents with @(
    UI.LineItem #tableView : [
    ],
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
        Text : 'Table View Incidents',
    }
);
annotate service.BusinessPartner with @(
    UI.LineItem #tableView1 : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView1',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
annotate service.BusinessPartner with @(
    UI.LineItem #tableView2 : [
    ],
    UI.SelectionPresentationVariant #tableView2 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView2',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 2',
    }
);
annotate service.BusinessPartner with @(
    UI.LineItem #tableView3 : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'BusinessPartnerID',
            ![@UI.Importance] : #High,
        },{
            $Type : 'UI.DataField',
            Value : customer,
            Label : 'customer',
        },{
            $Type : 'UI.DataField',
            Value : businesspartnername,
        },{
            $Type : 'UI.DataField',
            Value : businesspartnercategory,
        },{
            $Type : 'UI.DataField',
            Value : authorizationgroup,
            Label : 'authorizationgroup',
        },{
            $Type : 'UI.DataField',
            Value : supplier,
            Label : 'supplier',
        },
        {
            $Type : 'UI.DataField',
            Value : academictitle,
            Label : 'academictitle',
        },],
    UI.SelectionPresentationVariant #tableView3 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView3',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                ],
        },
        Text : 'Table View 3',
    }
);
annotate service.BusinessPartner with {
    ID @UI.MultiLineText : true
};
annotate service.BusinessPartner with {
    ID @Common.FieldControl : #Mandatory
};
annotate service.BusinessPartner with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : businesspartnername,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : academictitle,
        },
    }
);
annotate service.BusinessPartner with @(
    UI.DataPoint #customer : {
        $Type : 'UI.DataPointType',
        Value : customer,
        Title : '',
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ID',
            Target : '@UI.DataPoint#ID',
        },]
);
annotate service.BusinessPartner with @(
    UI.DataPoint #businesspartnername : {
        $Type : 'UI.DataPointType',
        Value : businesspartnername,
        Title : 'businesspartnername',
    }
);
annotate service.BusinessPartner with @(
    UI.DataPoint #customer1 : {
        $Type : 'UI.DataPointType',
        Value : customer,
        Title : 'customer',
    }
);
annotate service.BusinessPartner with @(
    UI.DataPoint #ID : {
        $Type : 'UI.DataPointType',
        Value : ID,
        Title : 'ID',
    }
);
annotate service.BusinessPartner with @(
    UI.FieldGroup #CustomerName : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : customer,
                Label : 'customer',
            },],
    }
);
