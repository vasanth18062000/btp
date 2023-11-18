using MyService as service from '../../srv/service';

annotate service.Emp with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'designation',
            Value : designation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'age',
            Value : age,
        },
        {
            $Type : 'UI.DataField',
            Value : departmentnumber_ID,
        },
    ]
);
annotate service.Emp with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'designation',
                Value : designation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'age',
                Value : age,
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
annotate service.Emp with @(
    UI.SelectionFields : [
        designation,]
);
annotate service.Emp with {
    departmentnumber @Common.Label : '{i18n>Departmentnumberid}'
};
annotate service.Dept with {
    departmentname @Common.Label : '{i18n>Departmentnumberdepartmentname}'
};
annotate service.Dept with {
    departmentname @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Dept',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : departmentname,
                    ValueListProperty : 'departmentname',
                },
            ],
            Label : 'Department',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : departmentcode
)};
annotate service.Emp with @(
    UI.SelectionPresentationVariant #tableView : {
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
        Text : '{i18n>Employeetable1}e',
    }
);
annotate service.Dept with @(
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
        Text : 'Department',
    }
);
annotate service.Emp with {
    designation @Common.Label : '{i18n>Designation}'
};
annotate service.Emp with {
    designation @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Emp',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : designation,
                    ValueListProperty : 'designation',
                },
            ],
            Label : 'designation',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Dept with @(
    UI.LineItem #tableView1 : [
        {
            $Type : 'UI.DataField',
            Value : departmentcode,
            Label : 'departmentcode',
        },{
            $Type : 'UI.DataField',
            Value : departmentname,
        },{
            $Type : 'UI.DataField',
            Value : location,
            Label : 'location',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },],
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
        Text : '{i18n>Depttable}',
    }
);
