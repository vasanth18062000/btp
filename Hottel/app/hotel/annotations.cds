using TrialService as service from '../../srv/Trial-Service';

annotate service.Hottel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'branchName',
            Value : branchName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'branchId',
            Value : branchId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Location',
            Value : Location,
        },
    ]
);
annotate service.Hottel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'branchName',
                Value : branchName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'branchId',
                Value : branchId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Location',
                Value : Location,
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
annotate service.Hottel with @(
    UI.SelectionFields : [
        branchName,
        branchId,
        ID,
        Location,
    ]
);
annotate service.Hottel with {
    branchName @Common.Label : 'branchName'
};
annotate service.Hottel with {
    branchId @Common.Label : 'branchId'
};
annotate service.Hottel with {
    ID @Common.Label : 'ID'
};
annotate service.Hottel with {
    Location @Common.Label : 'Location'
};
annotate service.Hottel with {
    Location @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Hottel',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Location,
                    ValueListProperty : 'Location',
                },
            ],
            Label : 'location',
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : branchName,
            ![@UI.TextArrangement] : #TextFirst,
        }
)};
